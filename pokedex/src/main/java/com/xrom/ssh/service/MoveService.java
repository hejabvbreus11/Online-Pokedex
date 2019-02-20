package com.xrom.ssh.service;

import com.xrom.ssh.entity.DB_moves;

public interface MoveService {
    DB_moves getmovebyid(int id);
    DB_moves getmovebyname(String name);
}
