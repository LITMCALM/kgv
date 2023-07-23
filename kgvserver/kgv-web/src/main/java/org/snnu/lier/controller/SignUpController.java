package org.snnu.lier.controller;

import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authc.UsernamePasswordToken;

import org.snnu.lier.common.exception.AppExceptionCodeMsg;
import org.snnu.lier.common.response.Resp;
import org.snnu.lier.model.mysql.User;
import org.snnu.lier.service.SignUpService;
import org.snnu.lier.service.TokenService;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Slf4j(topic="signup-controller")
@RestController
public class SignUpController {

    @Resource
    SignUpService signUpService;

    @Resource
    TokenService tokenService;

    @RequestMapping("/sign/up")
    public Object signUp(String username,String password){

        if(username!=null&&password!=null) {
            //令牌
            UsernamePasswordToken usernamePasswordToken = new UsernamePasswordToken(username, password);

            User user = signUpService.signUp(usernamePasswordToken);
            if(user !=null){
                log.info("注册成功");

                log.info("Token 信息写入Redis缓存");
                tokenService.setToken(user);

                Map<String,String> data = new HashMap<>();
                data.put("username",user.getUsername());
                data.put("time",user.getSignupTime().toString());
                return Resp.success("注册成功",data);
            }
        }
        log.error("注册失败");

        return Resp.error(AppExceptionCodeMsg.USERNAME_PASSWORD_INCORRECT);
    }
}
