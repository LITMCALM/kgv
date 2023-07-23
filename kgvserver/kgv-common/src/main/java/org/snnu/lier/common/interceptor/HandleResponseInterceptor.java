package org.snnu.lier.common.interceptor;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @Auther: litm
 * @Date: 2022/3/22 14:28
 * @Description:
 */
@Slf4j(topic = "HandleResponseInterceptor")
public class HandleResponseInterceptor implements HandlerInterceptor {
    //预处理方法
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        log.info("--------------自定义拦截器预处理");
        response.setHeader("Access-Control-Allow-Origin","*");
        response.setHeader("Access-Control-Allow-Headers","*");
        return true;
    }

    //后处理方法
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
//        modelAndView.addObject("tips","这是通过拦截器的后处理添加的数据");
        log.info("--------------自定义拦截器后处理");
    }
}
