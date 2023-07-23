package org.snnu.lier.common.jwt;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.interfaces.DecodedJWT;

import java.util.Date;

public class JwtUtil {
    //设置过期时间
    private static final long EXPIRE_TIME = 24 * 60 * 60  * 1000;
    // 密钥
    private static final String SECRET = "jwt+shiro";

    /**
     * 判断token是否为空或者格式是否正确
     * @param token
     * @return
     */
    public static boolean judgeFormat(String token){
        if(token!=null){
            return token.split("\\.").length == 3;
        }
        return false;
    }
    /**
     * 校验token是否正确
     * @description 校验的时候根据用户密码生成校验器，完成校验。签名时和校验时使用的秘钥相同才可以完成校验
     * 间接验证了token的正确性。
     * @param token  JWTToken
     * @param secret 用户的密码
     * @return 是否正确
     */
    @SuppressWarnings("unused")
    public static boolean verify(String token, String username, String secret) {
        try {
            //根据密码生成JWT效验器
            Algorithm algorithm = Algorithm.HMAC256(secret);
            JWTVerifier verifier = JWT.require(algorithm)
                    .withClaim("username", username)
                    .build();
            //效验TOKEN
            DecodedJWT jwt = verifier.verify(token);
            return true;
        } catch (Exception exception) {
            return false;
        }
    }

    /**
     * 获得token中的信息无需secret解密也能获得
     *
     * @return token中包含的用户名
     */
    public static String getUsername(String token) {
        if(token==null){
            return null;
        }
        try {
            DecodedJWT jwt = JWT.decode(token);
            return jwt.getClaim("username").asString();
        } catch (JWTDecodeException e) {
            return null;
        }
    }

    /**
     * 生成签名,24h后过期
     * @description 将用户密码当做加密秘钥，然后签名生成JWTToken
     * @param username 用户名
     * @return 加密的token
     */
    public static String sign(String username,String secret) {
        Date date = new Date(System.currentTimeMillis() + EXPIRE_TIME);
        Algorithm algorithm = Algorithm.HMAC256(secret);
        // 附带username信息
        return JWT.create()
                .withClaim("username", username)
                .withExpiresAt(date)
                .sign(algorithm);

    }

    /**
     * 判断过期
     *
     * @param token
     * @return
     */
    public static boolean isExpire(String token) {
        DecodedJWT jwt = JWT.decode(token);
        return System.currentTimeMillis() > jwt.getExpiresAt().getTime();
    }
}

