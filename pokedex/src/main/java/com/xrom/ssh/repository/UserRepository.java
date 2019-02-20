package com.xrom.ssh.repository;

import com.xrom.ssh.entity.Users;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;

@Repository
@Table(name="users")
@Qualifier("UserRepository")
public interface UserRepository extends DomainRepository<Users, Integer> {
}
