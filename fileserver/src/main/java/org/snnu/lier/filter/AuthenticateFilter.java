package org.snnu.lier.filter;

import lombok.extern.slf4j.Slf4j;
import org.snnu.lier.util.RedisUtil;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Slf4j(topic="authenticatie-filter")
public class AuthenticateFilter implements Filter {


    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        log.info("登录判断");
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        String authorization = request.getHeader("Authorization");
        log.info(authorization);
        String value = RedisUtil.redis.opsForHash().get("jwt_token", authorization).toString();
        log.info(value);
        if(authorization!=null&&value !=null){
            log.info("已经登录");
            filterChain.doFilter(servletRequest,servletResponse);
        }
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}