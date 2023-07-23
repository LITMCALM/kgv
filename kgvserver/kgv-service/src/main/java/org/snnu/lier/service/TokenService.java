package org.snnu.lier.service;


import org.snnu.lier.model.mysql.User;

public interface TokenService {
    public String setToken(User user);

    public boolean judgeToken(String jwtToken);

    public boolean deleteToken(String jwtToken);
}
