package org.snnu.lier.service.serviceImpl;

import cn.hutool.core.date.DateTime;
import cn.hutool.core.lang.Snowflake;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.snnu.lier.common.exception.AppException;
import org.snnu.lier.common.exception.AppExceptionCodeMsg;
import org.snnu.lier.common.utils.SaltMD5Util;
import org.snnu.lier.mapper.UserDao;
import org.snnu.lier.mapper.UserRoleDao;
import org.snnu.lier.model.constant.RolesConst;
import org.snnu.lier.model.constant.TableConst;
import org.snnu.lier.model.mysql.User;
import org.snnu.lier.model.mysql.UserRole;
import org.snnu.lier.service.SignUpService;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Objects;

@Slf4j(topic = "signup-impl")
@Service
public class SignUpServiceImpl implements SignUpService {

    @Resource
    UserDao userDao;

    @Resource
    UserRoleDao userRoleDao;

    @Resource
    RedisTemplate<String,Long> redisTemplate;

    /**
     * 注册业务逻辑
     * @param usernamePasswordToken
     * @return
     */
    @Transactional(rollbackFor = Exception.class)
    @Override
    public User signUp(UsernamePasswordToken usernamePasswordToken) {
        String username = usernamePasswordToken.getUsername();
        String password = new String(usernamePasswordToken.getPassword());

        User user = null;
        if(usernameIsNotExists(username)){
            /*密码加密后写入数据库*/
            user = new User();
            user.setUsername(username);

            log.info("用户密码加密");
            encrypt(user,password);

            log.info("生成用户ID");
            Snowflake snowflake = SaltMD5Util.snowflake;
            //通过snowflake生成用户唯一ID
            long userId = snowflake.nextId();
            user.setId(userId);

            DateTime dateTime = new DateTime();
            log.info("注册时间："+dateTime);
            user.setSignupTime(dateTime);

            log.info("添加用户到数据库");
            userDao.insert(user);

            log.info("给用户添加角色");
            addRoleForUser(user);
        }
        else{
            throw new AppException(AppExceptionCodeMsg.USERNAME_DUPLICATE);
        }
        return user;
    }

    @Override
    public boolean usernameIsNotExists(String username) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("username").eq("username",username);
        User user = userDao.selectOne(queryWrapper);
        return Objects.isNull(user);
    }

    @Override
    public void encrypt(User user, String password){
        //默认使用UUID加盐加密
        SaltMD5Util saltMD5Util = SaltMD5Util.getInstance();
        String salt = saltMD5Util.createSalt();
        String secret = saltMD5Util.md5Encryption(password,salt);
        user.setPassword(secret);
        user.setSalt(salt);

    }

    /**
     * 给新用户添加角色
     * @param user
     */
    @Override
    public void addRoleForUser(User user) {
        UserRole userRole = new UserRole(null, user.getId(), RolesConst.ORDINARY_USER,RolesConst.ORDINARY_USER_ROLE_NAME);

        if (Boolean.TRUE.equals(redisTemplate.hasKey(TableConst.USER_ROLE))) {
            Long id = (Long) redisTemplate.opsForValue().get(TableConst.USER_ROLE);
            userRole.setId(id+1);
            redisTemplate.opsForValue().set(TableConst.USER_ROLE,id+1);
        }
        else{

            Long id = userRoleDao.selectCount(null)+1;
            redisTemplate.opsForValue().set(TableConst.USER_ROLE,id);
        }
        userRoleDao.insert(userRole);
    }
}
