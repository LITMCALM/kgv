package org.snnu.lier.common.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMVCConfig implements WebMvcConfigurer {



    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        HandleResponseInterceptor handleResponseInterceptor = new HandleResponseInterceptor();
        registry.addInterceptor(handleResponseInterceptor);
        WebMvcConfigurer.super.addInterceptors(registry);
    }
}
