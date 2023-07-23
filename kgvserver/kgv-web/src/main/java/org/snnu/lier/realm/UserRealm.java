package org.snnu.lier.realm;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.pam.UnsupportedTokenException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;

import org.snnu.lier.common.jwt.JwtToken;
import org.snnu.lier.common.jwt.JwtUtil;
import org.snnu.lier.mapper.RolePermissionDao;
import org.snnu.lier.mapper.UserDao;
import org.snnu.lier.mapper.UserRoleDao;
import org.snnu.lier.model.constant.RedisHashNameConstants;
import org.snnu.lier.model.mysql.RolePermission;
import org.snnu.lier.model.mysql.User;
import org.snnu.lier.model.mysql.UserRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j(topic = "userRealm")
public class UserRealm extends AuthorizingRealm {
    @Autowired
    UserRoleDao tbUserRoleMapper;
    @Autowired
    RolePermissionDao tbRolePermissionMapper;
    @Autowired
    UserDao userDao;

    @Resource
    StringRedisTemplate stringRedisTemplate;

    /**
     * 大坑！，必须重写此方法，不然Shiro会报错
     */
    @Override
    public boolean supports(AuthenticationToken token) {
        return token instanceof JwtToken;
    }

    /**
     * @Description 授权 权限匹配
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("AuthorizationInfo -----------授权");
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        //拿到当前登录的这个对象
        Subject subject = SecurityUtils.getSubject();
        String principal = (String) subject.getPrincipal();
        QueryWrapper queryWrapper = new QueryWrapper<User>();
        queryWrapper.select().eq("username",principal);
        User currentUser = userDao.selectOne(queryWrapper);


                //获取角色
        queryWrapper = new QueryWrapper<UserRole>();
        queryWrapper.select().eq("user_id",currentUser.getId());
        List<UserRole> userRoles = tbUserRoleMapper.selectList(queryWrapper);
        //获取权限
        queryWrapper = new QueryWrapper<RolePermission>();
        queryWrapper.select().in("role_id", userRoles.stream().map(UserRole::getRoleId).collect(Collectors.toList()));
        List<RolePermission> tbRolePermissions = tbRolePermissionMapper.selectList(queryWrapper);


        //设置角色与权限
        info.setRoles(userRoles.stream().map(i->i.getRoleName()).collect(Collectors.toSet()));
        info.setStringPermissions(tbRolePermissions.stream().map(i->i.getPermissionName()).collect(Collectors.toSet()));


        return info;
    }


    /**
     * @Description 认证 账号密码匹配(登陆)
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String token = (String) authenticationToken.getCredentials();

        if(token==null){
            throw new AuthenticationException("无token，请重新登录");
        }

        if(token.split("\\.").length!=3){
            log.info("无效的token"+token);
            throw new UnsupportedTokenException("无效的token");
        }

        if (JwtUtil.isExpire(token)) {
            log.info("token过期，请重新登入！");
            stringRedisTemplate.opsForHash().delete(RedisHashNameConstants.JWT_TOKEN_HASH_NAME,token);
            throw new AuthenticationException("token过期，请重新登入！");
        }
        // 解密获得username，用于和数据库进行对比
        String username = JwtUtil.getUsername(token);

        if (username == null) {
            throw new AuthenticationException("token错误，请重新登入！");
        }
        QueryWrapper<User> queryWrapper = new QueryWrapper<User>();
        queryWrapper.select("id", "password", "username", "salt").eq("username", username);
        User tbuser = userDao.selectOne(queryWrapper);


        if (tbuser == null) {
            log.info("用户不存在");
            throw new UnknownAccountException("用户不存在");
        }
        if (!JwtUtil.verify(token, tbuser.getUsername(), tbuser.getPassword())) {
            log.info("密码错误");
            throw new IncorrectCredentialsException("密码错误!");
        }
        ByteSource byteSource = ByteSource.Util.bytes(tbuser.getSalt());
        return new SimpleAuthenticationInfo(tbuser.getUsername(),tbuser.getPassword(), byteSource,this.getName());
    }
}
