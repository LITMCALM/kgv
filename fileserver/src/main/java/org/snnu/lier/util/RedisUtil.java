package org.snnu.lier.util;

import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

@Component
public class RedisUtil {
    @Resource
    private RedisTemplate redisTemplate;

    public static RedisTemplate redis;

    @PostConstruct
    public void setRedisTemplate(){
        redis = this.redisTemplate;
    }
}
