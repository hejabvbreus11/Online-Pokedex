package com.xrom.ssh.service;

import com.xrom.ssh.entity.DB_pokemon;
import com.xrom.ssh.repository.PokemonRepository;
import com.xrom.ssh.repository.PokemonRepository_impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PokemonService_impl {
    @Autowired
    private PokemonRepository pokemonRepository;

    @Autowired
    private PokemonRepository_impl pokemonRepository_impl;

    public DB_pokemon getpokemonbyid(int id){

        return pokemonRepository.get(id);
    }

    public List<DB_pokemon> getpokemonbyorder(String order_field){
        return pokemonRepository_impl.getpokemonbyorder(order_field);
    }

    public List<DB_pokemon> getpokemonbytype(String type){
        return pokemonRepository_impl.getpokemonbytype(type);
    }
    public List<DB_pokemon> getpokemonbymove(String move){
        return pokemonRepository_impl.getpokemonbymove(move);
    }

    public List<DB_pokemon> getpokemonbyability(String ability){
        return pokemonRepository_impl.getpokemonbyability(ability);
    }

    public List<DB_pokemon> getpokemonbyname(String name){
        return pokemonRepository_impl.getpokemonbyname(name);
    }

}
