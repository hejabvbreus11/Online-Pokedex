package com.xrom.ssh.repository;

import com.xrom.ssh.entity.DB_evolution;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import javax.persistence.Table;

@Repository
@Table(name="evolution")
@Qualifier("EvolutionRepository")
public interface EvolutionRepository extends DomainRepository<DB_evolution, Integer> {
}
