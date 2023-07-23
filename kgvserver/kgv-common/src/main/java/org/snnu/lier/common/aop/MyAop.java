package org.snnu.lier.common.aop;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * @Auther: litm
 * @Date: 2022/4/8 08:55
 * @Description:
 */
@Component
@Aspect
public class MyAop {

    @Pointcut("@annotation(org.snnu.lier.common.aop.AopTest)")
    public void aopPointcut(){}

    @Before("aopPointcut()")
    public void pre(){
        System.out.println("之前增强......");
    }

    @After("aopPointcut()")
    public void post(){
        System.out.println("之后增强......");
    }
}
