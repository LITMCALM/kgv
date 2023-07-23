package org.snnu.lier.service.serviceImpl;

import lombok.extern.slf4j.Slf4j;

import org.snnu.lier.common.jwt.JwtToken;
import org.snnu.lier.common.jwt.JwtUtil;
import org.snnu.lier.model.constant.RedisHashNameConstants;
import org.snnu.lier.model.mysql.User;
import org.snnu.lier.service.TokenService;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Slf4j(topic="setToken-service")
@Service
public class TokenServiceImpl implements TokenService {

    @Resource
    StringRedisTemplate stringRedisTemplate;

    @Override
    public String setToken(User user) {


        String token = JwtUtil.sign(user.getUsername(), user.getPassword());
        log.info(token);
        JwtToken jwtToken  = new JwtToken(token);

        //将token放入redis中
        stringRedisTemplate.opsForHash().put(RedisHashNameConstants.JWT_TOKEN_HASH_NAME,token, user.getUsername());
        return token;
    }

    public boolean deleteToken(String jwtToken){
        stringRedisTemplate.opsForHash().delete(RedisHashNameConstants.JWT_TOKEN_HASH_NAME,jwtToken);
        return true;
    }
    @Override
    public boolean judgeToken(String jwtToken) {
        String username = (String) stringRedisTemplate.opsForHash().get(RedisHashNameConstants.JWT_TOKEN_HASH_NAME,jwtToken);
        log.info(username);
        if(username!=null){
            return true;
        }
        return false;
    }
}
