package com.xrom.ssh.service;

import com.xrom.ssh.entity.DB_moves;
import com.xrom.ssh.repository.MoveRepository;
import com.xrom.ssh.repository.MoveRepository_impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MoveService_impl {
    @Autowired
    private MoveRepository moveRepository;
    @Autowired
    private MoveRepository_impl moveRepository_impl;

    public DB_moves getmovebyid(int id){

        return moveRepository.get(id);
    }

    public DB_moves getmovebyname(String name){
        return moveRepository_impl.getmovebyname(name);
    }

}