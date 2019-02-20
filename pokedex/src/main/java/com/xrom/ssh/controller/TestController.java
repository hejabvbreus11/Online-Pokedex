package com.xrom.ssh.controller;

import com.xrom.ssh.entity.DB_evolution;
import com.xrom.ssh.entity.DB_item;
import com.xrom.ssh.entity.DB_moves;
import com.xrom.ssh.entity.DB_pokemon;
import com.xrom.ssh.service.EvolutionService_impl;
import com.xrom.ssh.service.ItemService_impl;
import com.xrom.ssh.service.MoveService_impl;
import com.xrom.ssh.service.PokemonService_impl;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class TestController {

    @Autowired(required=true)
    private PokemonService_impl pokemonService;

    @Autowired(required=true)
    private ItemService_impl itemService;

    @Autowired(required=true)
    private EvolutionService_impl evolutionService;

    @Autowired(required=true)
    private MoveService_impl moveService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index1(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        model.addAttribute("session",session);
        return "index";
    }

    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String index2(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();
        model.addAttribute("session",session);
        return "index";
    }

    @RequestMapping(value = "pokedex", method = RequestMethod.GET)
    public String pokedex(Model model,HttpServletRequest request,String page) {
        int count = Integer.valueOf(page);
        HttpSession session = request.getSession();
        model.addAttribute("session",session);
        ArrayList<DB_pokemon> pokemons=new ArrayList<>();
        for(int i=(count-1)*16+1;i<count*16+1;i++) {
            DB_pokemon pokemon=pokemonService.getpokemonbyid(i);
            pokemons.add(pokemon);
        }
        model.addAttribute("pokemons",pokemons);
        return "pokedex";
    }

    @RequestMapping(value = "pokemon", method = RequestMethod.GET)
    public ModelAndView pokemon(Model model,String id) {
        ModelAndView mv = new ModelAndView();
        DB_pokemon pokemon=pokemonService.getpokemonbyid(Integer.valueOf(id));
        mv.addObject("pokemon",pokemon);
//        model.addAttribute("pokemon",pokemon);
        String items=pokemon.getHeld_items();
        String moves=pokemon.getMoves();
        DB_evolution evolution=evolutionService.getevolutionbyid(pokemon.getEvolution_chain());
            if(items.equals("N/A")){
//                model.addAttribute("itemnumber",0);
                mv.addObject("itemnumber",0);
            }
            else{
                ArrayList<DB_item> itemlist=new ArrayList<>();
                for(int i=0;i<items.split("/").length;i++){
                    itemlist.add(itemService.getitembyname(items.split("/")[i]));
                }
                mv.addObject("itemnumber",items.split("/").length);
                mv.addObject("items",itemlist);
            }
            if(evolution.getEvo2().equals("N/A")){
                mv.addObject("evomod",1);
                mv.addObject("evo1",evolution.getEvo1());
                mv.addObject("method1","");
                mv.addObject("evo2","");
                mv.addObject("method2","");
                mv.addObject("evo3","");
            }
            else if(!evolution.getEvo3().equals("N/A")){
                mv.addObject("evomod",3);
                mv.addObject("evo1",evolution.getEvo1());
                mv.addObject("method1",evolution.getMethod1());
                mv.addObject("evo2",evolution.getEvo2());
                mv.addObject("method2",evolution.getMethod2());
                mv.addObject("evo3",evolution.getEvo3());
            }
            else{
                mv.addObject("evomod",2);
                mv.addObject("evo1",evolution.getEvo1());
                mv.addObject("method1",evolution.getMethod1());
                mv.addObject("evo2",evolution.getEvo2());
                mv.addObject("method2","");
                mv.addObject("evo3","");
            }
        mv.setViewName("pokemon");
        System.out.print(pokemon.getName());
        return mv;
    }

    @RequestMapping(value = "moves", method = RequestMethod.GET)
    public  String moves(Model model,String page,HttpServletRequest request){
        HttpSession session = request.getSession();
        DB_pokemon pokemon = new DB_pokemon();
        int count=Integer.valueOf(page);
        ArrayList<DB_moves> movelist=new ArrayList<>();
        if(count==36){
            for(int i=(36-1)*20+1;i<720;i++){
                DB_moves move=moveService.getmovebyid(Integer.valueOf(i));
                System.out.println(move.getId());
                movelist.add(move);
            }
        }
        else{
            for(int i=(count-1)*20+1;i<count*20+1;i++){
                DB_moves move=moveService.getmovebyid(Integer.valueOf(i));
                System.out.println(move.getId());
                movelist.add(move);
            }
        }
        model.addAttribute("pokemon",pokemon);
        model.addAttribute("movelist",movelist);
        model.addAttribute("session",session);
        return "moves";
    }

    @RequestMapping(value = "movesearch", method = RequestMethod.GET)
    public  String movesbyname(Model model,HttpServletRequest request,String name){
        HttpSession session = request.getSession();
        DB_pokemon pokemon = new DB_pokemon();
        ArrayList<DB_moves> movelist=new ArrayList<>();
        if(!(moveService.getmovebyname(name)==(null))) {
            DB_moves move = moveService.getmovebyname(name);
            movelist.add(move);
            model.addAttribute("movelist", movelist);
        }
        else model.addAttribute("errmessage","Please check the move name again!");
        model.addAttribute("pokemon",pokemon);
        model.addAttribute("session",session);
        return "moves";
    }

    @RequestMapping(value = "stats", method = RequestMethod.GET)
    public String stats(Model model,String id) {
        DB_pokemon pokemon=pokemonService.getpokemonbyid(Integer.valueOf(id));
        model.addAttribute("pokemon",pokemon);
        return "stats";
    }

    @RequestMapping(value = "profile", method = RequestMethod.GET)
    public String profile(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();
        model.addAttribute("session",session);
        return "profile";
    }

    @RequestMapping(value = "search", method = RequestMethod.GET)
    public String search(Model model,HttpServletRequest request) {
        HttpSession session = request.getSession();
        if(session.getAttribute("role")=="supreme user") {
            model.addAttribute("session", session);
            ArrayList<DB_pokemon> pokemons = new ArrayList<>();
            for (int i = 1; i < 41; i++) {
                DB_pokemon pokemon = pokemonService.getpokemonbyid(i);
                pokemons.add(pokemon);
            }
            model.addAttribute("pokemons", pokemons);
            return "search";
        }
        else {
            model.addAttribute("session", session);
            session.setAttribute("errms","Sorry, you are not authorized to access this page");
            return "index";
        }
    }

    @RequestMapping(value = "searchbyorder", method = RequestMethod.GET)
    public String searchbyorder(Model model,HttpServletRequest request,String order_field) {
        HttpSession session = request.getSession();
        model.addAttribute("session",session);
        List<DB_pokemon> pokemons_prev=pokemonService.getpokemonbyorder(order_field);
        ArrayList<DB_pokemon> pokemons=new ArrayList<>();;
        for(int i=1;i<41;i++) {
            pokemons.add(pokemons_prev.get(i));
        }
        model.addAttribute("pokemons",pokemons);
        return "search";
    }

    @RequestMapping(value = "searchbyparam", method = RequestMethod.GET)
    public String searchbyparam(Model model,HttpServletRequest request,String param) {
        HttpSession session = request.getSession();
        model.addAttribute("session",session);
        if(param.split("/").length<2){
            model.addAttribute("errormessage","please amend your query in proper format");
            return "search";
        }
        else {
            List<DB_pokemon> pokemons = new List<DB_pokemon>() {
                @Override
                public int size() {
                    return 0;
                }

                @Override
                public boolean isEmpty() {
                    return false;
                }

                @Override
                public boolean contains(Object o) {
                    return false;
                }

                @Override
                public Iterator<DB_pokemon> iterator() {
                    return null;
                }

                @Override
                public Object[] toArray() {
                    return new Object[0];
                }

                @Override
                public <T> T[] toArray(T[] a) {
                    return null;
                }

                @Override
                public boolean add(DB_pokemon db_pokemon) {
                    return false;
                }

                @Override
                public boolean remove(Object o) {
                    return false;
                }

                @Override
                public boolean containsAll(Collection<?> c) {
                    return false;
                }

                @Override
                public boolean addAll(Collection<? extends DB_pokemon> c) {
                    return false;
                }

                @Override
                public boolean addAll(int index, Collection<? extends DB_pokemon> c) {
                    return false;
                }

                @Override
                public boolean removeAll(Collection<?> c) {
                    return false;
                }

                @Override
                public boolean retainAll(Collection<?> c) {
                    return false;
                }

                @Override
                public void clear() {

                }

                @Override
                public DB_pokemon get(int index) {
                    return null;
                }

                @Override
                public DB_pokemon set(int index, DB_pokemon element) {
                    return null;
                }

                @Override
                public void add(int index, DB_pokemon element) {

                }

                @Override
                public DB_pokemon remove(int index) {
                    return null;
                }

                @Override
                public int indexOf(Object o) {
                    return 0;
                }

                @Override
                public int lastIndexOf(Object o) {
                    return 0;
                }

                @Override
                public ListIterator<DB_pokemon> listIterator() {
                    return null;
                }

                @Override
                public ListIterator<DB_pokemon> listIterator(int index) {
                    return null;
                }

                @Override
                public List<DB_pokemon> subList(int fromIndex, int toIndex) {
                    return null;
                }
            };
            switch (param.split("/")[0]) {
                case "type": pokemons = pokemonService.getpokemonbytype(param.split("/")[1]);break;
                case "move": pokemons = pokemonService.getpokemonbymove(param.split("/")[1]);break;
                case "ability": pokemons = pokemonService.getpokemonbyability(param.split("/")[1]);break;
                case "name": pokemons = pokemonService.getpokemonbyname(param.split("/")[1]);break;
                default: model.addAttribute("errormessage","please amend your query in proper format");break;
            }
            model.addAttribute("pokemons", pokemons);
            return "search";
        }
    }

    @RequestMapping(value = "/findpokemon", method = RequestMethod.GET)
    @ResponseBody
    public String savePerson() {
        System.out.println(pokemonService.getpokemonbyid(18).getName());
        return "success!";
    }

    @RequestMapping(value="/update")
    @ResponseBody
    public Object update(@RequestBody String params){
        Map<String, Object> map = new HashMap<>();
        JSONObject user = new JSONObject(params);
        map.put("success", false);
        DB_pokemon pokemon=pokemonService.getpokemonbyid(user.getInt("id"));
        String message = "{\"hp\":" + pokemon.getHp() + ",\"atk\":" + pokemon.getAttack() + ",\"def\":" + pokemon.getDefense() + ",\"sp_atk\":" + pokemon.getSp_attack() + ",\"sp_def\":" + pokemon.getSp_defense() + ",\"spd\":" + pokemon.getSpeed() + ",\"pokemonname\":\"" + pokemon.getName() + "\",\"m\":\"congratulations to " + user.getString("username") + "\"}";
        System.out.println(message);
        map.put("success", true);
        map.put("message", message);

        return map;
    }

}
