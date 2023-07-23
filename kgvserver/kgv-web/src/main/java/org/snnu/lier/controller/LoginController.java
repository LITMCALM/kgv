package org.snnu.lier.controller;

import cn.hutool.core.date.DateTime;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;

import org.snnu.lier.common.exception.AppExceptionCodeMsg;
import org.snnu.lier.common.exception.VerifyCodeException;
import org.snnu.lier.common.jwt.JwtToken;
import org.snnu.lier.common.jwt.JwtUtil;
import org.snnu.lier.common.response.Resp;
import org.snnu.lier.common.utils.VerificationCodeUtil;
import org.snnu.lier.model.constant.RedisHashNameConstants;
import org.snnu.lier.model.mysql.User;
import org.snnu.lier.service.LoginService;
import org.snnu.lier.service.TokenService;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

@Slf4j(topic = "login-controller")

@RestController
public class LoginController {

    @Resource
    StringRedisTemplate stringRedisTemplate;

    @Resource
    LoginService loginService;

    @Resource
    TokenService tokenService;


    @RequestMapping({"/toLogin"})
    public Object toLogin(Model model, HttpServletRequest request) {
        String token = request.getHeader("Authorization");
        log.info(token);
        if (token == null) {
            return Resp.error(AppExceptionCodeMsg.TOKEN_MISS);
        }
        if (tokenService.judgeToken(token)) {
            if (JwtUtil.isExpire(token)) {
                log.info("token过期，重新登录");
                tokenService.deleteToken(token);
                return Resp.error(AppExceptionCodeMsg.TOKEN_EXPIRED);
            } else {
                Map<String,String> map = new HashMap<>();
                map.put("user", (String) stringRedisTemplate.opsForHash().get(RedisHashNameConstants.JWT_TOKEN_HASH_NAME,token));
                map.put("login_time",new DateTime().toString());
                return Resp.success("登录成功",map);
            }
        }
        return Resp.error(AppExceptionCodeMsg.USERNAME_PASSWORD_INCORRECT);
    }

    @RequestMapping("/user/login")
    public Object userLogin(HttpServletRequest request, HttpServletResponse response, Model model) {
        //todo  需要先判断该用户是否已经登录
        String token = request.getHeader("Authorization");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String verifyCode = request.getParameter("verifyCode");

        Map<String,Object> map = new HashMap<>();
        try {
            if (JwtUtil.judgeFormat(token)) {
                SecurityUtils.getSubject().login(new JwtToken(token));
            } else {
                User user = loginService.loginService(username, password);
//                验证码判断代码
//                checkCode(request,verifyCode);
                log.info("登陆成功");
                String jwtToken = tokenService.setToken(user);
                log.info("token设置成功");
                response.setHeader("Authorization", jwtToken);
                map.put("username", user.getUsername());//唯一用户名
                map.put("code", 200);
                map.put("token", jwtToken);
                model.addAttribute("message", map);
                HttpSession session = request.getSession(true);
                session.setAttribute("user_id", user.getId());
                session.setAttribute("username", user.getUsername());

            }
        }
        catch (UnknownAccountException e) { //返回null就会进入这里
            model.addAttribute("msg", "用户名不存在！");
            return Resp.error(AppExceptionCodeMsg.USERNAME_NOT_EXISTS);
        }
        catch (IncorrectCredentialsException e) { //密码错误就会进入这里
            model.addAttribute("msg", "密码错误！");
            return Resp.error(AppExceptionCodeMsg.PASSWORD_INCORRECT);
        }
        catch(VerifyCodeException ve){//验证码错误
            return Resp.error(AppExceptionCodeMsg.INVALID_CODE);
        }
        catch(AuthenticationException ae){
            model.addAttribute("msg", "token错误（非法或过期）");
            return Resp.error(AppExceptionCodeMsg.TOKEN_INCORRECT);
        }
        return Resp.success(map);
    }

    @RequestMapping("/verifyCode")
    public void verificationCode(HttpServletResponse response, HttpServletRequest request) throws IOException {
        VerificationCodeUtil verificationCodeUtil = new VerificationCodeUtil();
        final BufferedImage image = verificationCodeUtil.getImage();
        String text = verificationCodeUtil.getText();
        HttpSession session = request.getSession(true);
        session.setAttribute("verify_code",text);
        VerificationCodeUtil.output(image,response.getOutputStream());
    }

    public void checkCode(HttpServletRequest request, String verifyCode){
        HttpSession httpSession = request.getSession();
        String verify_code = (String)httpSession.getAttribute("verify_code");
        if(verifyCode==null||verify_code==null||"".equals(verifyCode)||!verify_code.toLowerCase(Locale.ROOT).equals(verifyCode.toLowerCase())){
            throw new VerifyCodeException("验证码错误");
        }
    }
}
