package org.snnu.lier.common.jwt;

import org.apache.shiro.authc.AuthenticationToken;

/**
 * 收集用户提交的身份（如用户名）及凭据（如密码）进行认证
 * @author zyp
 *
 */
public class JwtToken implements AuthenticationToken {
    private static final long serialVersionUID = 1L;
    private String token;

    public JwtToken(String token) {
        this.token = token;
    }

    @Override
    public Object getPrincipal() {
        return token;
    }

    @Override
    public Object getCredentials() {
        return token;
    }
}

