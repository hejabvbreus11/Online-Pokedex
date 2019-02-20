package com.xrom.ssh.service;
import com.xrom.ssh.entity.DB_item;
import com.xrom.ssh.repository.ItemRepository_impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemService_impl {
    @Autowired
    private ItemRepository_impl itemRepository;

    public DB_item getitembyname(String itemname) {
        return itemRepository.getbyname(itemname);
    }
}
