package org.snnu.lier.service.serviceImpl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;

import org.snnu.lier.common.utils.SaltMD5Util;
import org.snnu.lier.mapper.UserDao;
import org.snnu.lier.model.mysql.User;
import org.snnu.lier.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Objects;

@Slf4j(topic="login-service")

@Service
public class LoginServiceImpl implements LoginService {

    @Resource
    UserDao userDao;

    @Override
    public User loginService(String username, String password) {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("id","username","password","salt").eq("username",username);
        User user = userDao.selectOne(queryWrapper);


        if(user ==null){
            log.info("当前用户不存在");

            throw new UnknownAccountException("当前用户不存在");
        }

        if (!judgePassword(password, user)) {
            log.info("密码错误");

            throw new IncorrectCredentialsException("密码错误");
        }

        return user;
    }

    public boolean judgePassword(String password, User user){
        String tSecret = SaltMD5Util.getInstance().md5Encryption(password, user.getSalt());
        log.info(user.getPassword());
        log.info(tSecret);
        if(Objects.equals(user.getPassword(), tSecret)){

            return true;
        }
        return false;
    }
}
