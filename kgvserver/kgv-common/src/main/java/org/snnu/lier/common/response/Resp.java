package org.snnu.lier.common.response;


import org.snnu.lier.common.exception.AppExceptionCodeMsg;
import org.springframework.http.HttpStatus;

import java.time.Instant;

public class Resp<T> {
    //服务端返回的错误码
    private int code = 200;

    private int status;
    private String path;
    private Instant timestamp;
    //服务端返回的错误信息
    private String msg = "success";

    //我们服务端返回的数据
    private T data;

    private Resp(int code,String msg,T data){
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    private Resp(int code,int status,String msg,String path,T data){
        this.code = code;
        this.status = status;
        this.msg = msg;
        this.path = path;
        this.data = data;
    }

    public static <T> Resp success(T data){
        Resp resp = new Resp(200, "success", data);
        return resp;
    }

    public static <T> Resp success(String msg,T data){
        Resp resp = new Resp(200,msg, data);
        return resp;
    }

    public static <T> Resp error(AppExceptionCodeMsg appExceptionCodeMsg){
        Resp resp = new Resp(appExceptionCodeMsg.getCode(), appExceptionCodeMsg.getMsg(), null);
        return resp;
    }
    public static <T> Resp error(int code,String msg){
        Resp resp = new Resp(code,msg, null);
        return resp;
    }

    public int getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }

    public T getData() {
        return data;
    }
}
