package org.snnu.lier.service;

import org.apache.shiro.authc.UsernamePasswordToken;
import org.snnu.lier.model.mysql.User;


public interface SignUpService {
    public User signUp(UsernamePasswordToken usernamePasswordToken);
    public boolean usernameIsNotExists(String username);
    public void encrypt(User user, String password);
    public void addRoleForUser(User user);
}
