package com.xrom.ssh.service;

import com.xrom.ssh.entity.Users;

public interface UserService {
    int saveuser(Users entity);
    Users getuserbyname(String fname);
}
