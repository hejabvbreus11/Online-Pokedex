package com.xrom.ssh.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@Table(name = "move")
public class DB_moves {
    @Id
    @Column(name = "id")
//    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name="name")
    private String name;

    @Column(name="accuracy")
    private String accuracy;

    @Column(name="effect_chance")
    private String effect_chance;

    @Column(name="pp")
    private int pp;

    @Column(name="power")
    private String power;

    @Column(name="entry",length=1000)
    private String entry;

    @Column(name="type")
    private String type;

    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public String getName() { return name; }

    public void setName(String name) { this.name = name; }

    public String getAccuracy() { return accuracy; }

    public void setAccuracy(String accuracy) { this.accuracy = accuracy; }

    public String getEffect_chance() { return effect_chance; }

    public void setEffect_chance(String effect_chance) { this.effect_chance = effect_chance; }

    public int getPp() { return pp; }

    public void setPp(int pp) { this.pp = pp; }

    public String getPower() { return power; }

    public void setPower(String power) { this.power = power; }

    public String getEntry() { return entry; }

    public void setEntry(String entry) { this.entry = entry; }

    public String getType() { return type; }

    public void setType(String type) { this.type = type; }

}
