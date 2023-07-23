package org.snnu.lier.task;


import lombok.extern.slf4j.Slf4j;
import org.snnu.lier.common.jwt.JwtUtil;
import org.snnu.lier.model.constant.RedisHashNameConstants;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Set;

@Slf4j(topic = "redis-task")
@Component
public class RedisTask {


    @Resource
    StringRedisTemplate stringRedisTemplate;


//    @Scheduled(cron = "* 0/10 * * * ?")
    public void deleteTokenTask(){


        Long start = System.currentTimeMillis();
        log.info("开始定时任务...");
        Set<Object> tokens = stringRedisTemplate.opsForHash().keys(RedisHashNameConstants.JWT_TOKEN_HASH_NAME);

        tokens.forEach(it ->{
            if (JwtUtil.isExpire(it.toString())) {
                stringRedisTemplate.opsForHash().delete(RedisHashNameConstants.JWT_TOKEN_HASH_NAME,it.toString());
            }
        });
        Long end = System.currentTimeMillis();
        log.info("结束定时任务...");
        log.info("用时："+(end-start)/1000+"s");
    }
}
