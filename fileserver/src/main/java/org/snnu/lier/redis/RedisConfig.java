package org.snnu.lier.redis;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.autoconfigure.data.redis.RedisProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisStandaloneConfiguration;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;

import javax.annotation.Resource;

/**
 * @Auther: litm
 * @Date: 2022/6/30 16:45
 * @Description:
 */
@Slf4j(topic="redis-conf")
@Configuration
public class RedisConfig {

    @Resource
    RedisProperties redisProperties;
    //redis连接工厂，用来获取redis连接

    @Bean
    public JedisConnectionFactory jedisConnectionFactory(){

        RedisStandaloneConfiguration redisStandaloneConfiguration = new RedisStandaloneConfiguration(redisProperties.getHost(),redisProperties.getPort());

        JedisConnectionFactory jedisConnectionFactory = new JedisConnectionFactory(redisStandaloneConfiguration);

        return jedisConnectionFactory;

    }
    //redisTemplate可看做是操作redis的工具类
    @Bean
    public RedisTemplate<String,String> redisTemplate(JedisConnectionFactory jedisConnectionFactory){
        StringRedisTemplate redisTemplate = new StringRedisTemplate();
        redisTemplate.setConnectionFactory(jedisConnectionFactory);

        return redisTemplate;
    }
}
