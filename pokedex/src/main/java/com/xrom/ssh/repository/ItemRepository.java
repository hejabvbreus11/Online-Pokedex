package com.xrom.ssh.repository;

import com.xrom.ssh.entity.DB_item;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;

@Repository
@Table(name="item")
@Qualifier("ItemRepository")
public interface ItemRepository extends DomainRepository<DB_item, Integer> {
}
