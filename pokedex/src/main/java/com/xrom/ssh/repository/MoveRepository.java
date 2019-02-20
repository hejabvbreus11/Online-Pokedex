package com.xrom.ssh.repository;


import com.xrom.ssh.entity.DB_moves;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;

@Repository
@Table(name="move")
@Qualifier("ItemRepository")
public interface MoveRepository extends DomainRepository<DB_moves, Integer> {
}
