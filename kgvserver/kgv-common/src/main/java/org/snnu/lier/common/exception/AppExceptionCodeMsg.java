package org.snnu.lier.common.exception;

import org.springframework.http.HttpStatus;

public enum AppExceptionCodeMsg {
    INVALID_CODE(10000,"验证码无效",HttpStatus.NOT_ACCEPTABLE),
    USERNAME_NOT_EXISTS(10001,"用户名不存在",HttpStatus.NOT_FOUND),
    PASSWORD_INCORRECT(10002,"密码错误",HttpStatus.NOT_ACCEPTABLE),
    USERNAME_PASSWORD_INCORRECT(10003,"账号密码错误",HttpStatus.NOT_ACCEPTABLE),
    TOKEN_EXPIRED(10004,"token过期",HttpStatus.UNAUTHORIZED),
    TOKEN_INCORRECT(10005,"token无效",HttpStatus.UNAUTHORIZED),
    TOKEN_MISS(10006,"未携带token",HttpStatus.UNAUTHORIZED),
    UNAUTHORIZED(10007,"无权限",HttpStatus.NETWORK_AUTHENTICATION_REQUIRED),
    USERNAME_DUPLICATE(10008,"用户名重复",HttpStatus.NOT_ACCEPTABLE);


    private final int code ;
    private final HttpStatus status;
    private final String msg ;

    public int getCode() {
        return code;
    }

    public HttpStatus getStatus(){ return status; }

    public String getMsg() {
        return msg;
    }


    AppExceptionCodeMsg(int code, String msg, HttpStatus status){
        this.code = code;
        this.status = status;
        this.msg = msg;
    }
}
