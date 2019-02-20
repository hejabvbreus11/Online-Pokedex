package com.xrom.ssh.service;

import com.xrom.ssh.entity.DB_item;

public interface ItemService {
    DB_item getpitembyname(String itemname);
}
