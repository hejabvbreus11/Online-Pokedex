package com.xrom.ssh.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.text.DecimalFormat;

@Entity
@Data
@Table(name = "pokemon")
public class DB_pokemon {
    @Id
    @Column(name = "id")
//    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name="name")
    private String name;

    @Column(name="base_experience")
    private int base_experience;

    @Column(name="height")
    private int height;

    @Column(name="is_default")
    private boolean is_default;

    @Column(name="weight")
    private int weight;

    @Column(name="abilities")
    private String abilities;

    @Column(name="held_items")
    private String held_items;


    @Column(name="moves",length=2000)
    private String moves;

    @Column(name="gender_rate")
    private String gender_rate;

    @Column(name="capture_rate")
    private String capture_rate;

    @Column(name="base_happiness")
    private int base_happiness;

    @Column(name="hatch_counter")
    private int hatch_counter;

    @Column(name="evolution_chain")
    private int evolution_chain;

    @Column(name="habitat")
    private String habitat;

    @Column(name="flavor_text_entries",length=2000)
    private String flavor_text_entries;

    @Column(name="attack")
    private String attack;

    @Column(name="defense")
    private String defense;

    @Column(name="hp")
    private String hp;

    @Column(name="sp_attack")
    private String sp_attack;

    @Column(name="sp_defense")
    private String sp_defense;

    @Column(name="speed")
    private String speed;

    @Column(name="type")
    private String type;

    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public String getName() { return name; }

    public void setName(String name) { this.name = name; }

    public int getBase_experience() { return base_experience; }

    public void setBase_experience(int base_experience) { this.base_experience = base_experience; }

    public int getHeight(){return height; }

    public void setHeight(int height){ this.height=height; }

    public boolean getIs_default(){return is_default; }

    public void setIs_default(boolean intro){ this.is_default=is_default; }

    public int getWeight(){return weight; }

    public void setWeight(int weight){ this.weight=weight; }

    public String getAbilities() { return abilities; }

    public void setAbilities(String abilities) { this.abilities = abilities; }

    public String getHeld_items() { return held_items; }

    public void setHeld_items(String held_items) { this.held_items = held_items; }

    public String getMoves() { return moves; }

    public void setMoves(String moves) { this.moves = moves; }

    public String getGender_rate() { return gender_rate; }

    public void setGender_rate(String gender_rate) { this.gender_rate = gender_rate; }

    public String getCapture_rate() { return capture_rate; }

    public void setCapture_rate(String capture_rate) { this.capture_rate = capture_rate; }

    public int getBase_happiness() { return base_happiness; }

    public void setBase_happiness(int base_happiness) { this.base_happiness = base_happiness; }

    public int getHatch_counter() { return hatch_counter; }

    public void setHatch_counter(int hatch_counter) { this.hatch_counter = hatch_counter; }

    public int getEvolution_chain() { return evolution_chain; }

    public void setEvolution_chain(int evolution_chain) { this.evolution_chain = evolution_chain; }

    public String getHabitat() { return habitat; }

    public void setHabitat(String habitat) { this.habitat = habitat; }

    public String getFlavor_text_entries() { return flavor_text_entries; }

    public void setFlavor_text_entries(String flavor_text_entries) { this.flavor_text_entries = flavor_text_entries; }

    public String getAttack() { return attack; }

    public void setAttack(String attack) { this.attack = attack; }

    public String getDefense() { return defense; }

    public void setDefense(String defense) { this.defense = defense; }

    public String getSp_attack() { return sp_attack; }

    public void setSp_attack(String sp_attack) { this.sp_attack = sp_attack; }

    public String getSp_defense() { return sp_defense; }

    public void setSp_defense(String sp_defense) { this.sp_defense = sp_defense; }

    public String getHp() { return hp; }

    public void setHp(String hp) { this.hp = hp; }

    public String getSpeed() { return speed; }

    public void setSpeed(String speed) { this.speed = speed; }

    public String getType() { return type; }

    public void setType(String type) { this.type = type; }

    public String getUrl(){
        DecimalFormat fm = new DecimalFormat("000");
        String id = fm.format(this.getId());
        return "https://assets.pokemon.com/assets/cms2/img/pokedex/detail/" + id + ".png";
    }
    public String getUrl2(){
        return "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/" + this.getId() + ".png";
    }
    public String upperCase(String str) {
        char[] ch = str.toCharArray();
        if (ch[0] >= 'a' && ch[0] <= 'z') {
            ch[0] = (char) (ch[0] - 32);
        }
        return new String(ch);
    }
    public String toX(){
        return String.valueOf((this.getId()%12)*40);
    }
    public String toY(){
        return String.valueOf((this.getId()/12)*30);
    }
    public boolean testType(){
        if(this.getType().split("/").length>1) return true;
        else return false;
    }
    public boolean testAbilities(){
        if(this.getAbilities().split("/").length>1) return true;
        else return false;
    }
    public String getSum(){
        return String.valueOf(Integer.valueOf(this.hp)+Integer.valueOf(this.attack)+Integer.valueOf(this.defense)+Integer.valueOf(this.sp_attack)+Integer.valueOf(this.sp_defense)+Integer.valueOf(this.speed));
    }
}
