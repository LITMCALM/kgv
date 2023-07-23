package org.snnu.lier.service;


import org.snnu.lier.model.mysql.User;

public interface LoginService {
    public User loginService(String username, String password);
}
