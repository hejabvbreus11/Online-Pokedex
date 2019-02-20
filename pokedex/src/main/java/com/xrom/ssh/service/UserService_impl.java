package com.xrom.ssh.service;

import com.xrom.ssh.entity.Users;
import com.xrom.ssh.repository.UserRepository;
import com.xrom.ssh.repository.UserRepository_impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService_impl {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private UserRepository_impl userRepository_impl;

    public int saveuser(Users entity){

        return userRepository.save(entity);
    }

    public Users getuserbyname(String fname){
        return  userRepository_impl.getuserbyname(fname);
    }

}
