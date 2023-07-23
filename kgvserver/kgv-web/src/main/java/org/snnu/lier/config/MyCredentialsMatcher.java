package org.snnu.lier.config;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;

/**
 * 重写doCredentialsMatch方法，直接返回true;
 * 密码验证已经在UserRealm中完成，不需要走HashedCredentialsMatcher默认的逻辑
 * 默认逻辑：对获得的token进行加盐加密，然后与用户的加密后的密码比较得到结果。
 * 该逻辑不适用于JWTToken密码校验逻辑。
 * JWTToken密码校验逻辑在JwtUtil里完成。
 *
 */
public class MyCredentialsMatcher extends HashedCredentialsMatcher {

    @Override
    public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
//        Object tokenHashedCredentials = hashProvidedCredentials(token, info);//这里将得到页面传递来的password通过加密后的结果
//        Object accountCredentials = getCredentials(info);//这里得到是数据库的passwrod通过加密后的结果
        return true;
    }
}
