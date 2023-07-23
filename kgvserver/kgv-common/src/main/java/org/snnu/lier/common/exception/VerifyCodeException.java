package org.snnu.lier.common.exception;

public class VerifyCodeException extends RuntimeException {

    public VerifyCodeException(){}
    public VerifyCodeException(String message){
        super(message);
    }
}
