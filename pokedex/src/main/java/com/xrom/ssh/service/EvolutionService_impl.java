package com.xrom.ssh.service;

import com.xrom.ssh.entity.DB_evolution;
import com.xrom.ssh.repository.EvolutionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EvolutionService_impl {
    @Autowired
    private EvolutionRepository evolutionRepository;

    public DB_evolution getevolutionbyid(int id){

        return evolutionRepository.get(id);
    }
}
