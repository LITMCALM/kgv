package org.snnu.lier.common.exception;

import org.apache.shiro.authz.UnauthenticatedException;
import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;


@ControllerAdvice//controller增强器，捕获controller异常
public class MyExceptionHandler {
    @ExceptionHandler(UnauthorizedException.class)
    public String handlerUnauthorizedException(UnauthorizedException exception){
        System.err.println("handlerUnauthorizedException");
        exception.printStackTrace();
        return "/403";
    }


    //    @RequestBody
    @ExceptionHandler(UnauthenticatedException.class)
    public String unauthenticatedException(UnauthenticatedException exception){
        System.err.println("UnauthenticatedException");
        exception.printStackTrace();
        return "/toLogin";
    }
}
