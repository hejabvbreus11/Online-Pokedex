package com.xrom.ssh.service;


import com.xrom.ssh.entity.DB_pokemon;

import java.util.List;

public interface PokemonService {
        DB_pokemon getpokemonbyid(int id);
        List<DB_pokemon> getpokemonbyorder(String order_field);
        List<DB_pokemon> getpokemonbytype(String type);
        List<DB_pokemon> getpokemonbymove(String move);
        List<DB_pokemon> getpokemonbyability(String ability);
        List<DB_pokemon> getpokemonbyname(String name);

}
