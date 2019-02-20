package com.xrom.ssh.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@Table(name = "item")
public class DB_item {
    @Id
    @Column(name = "id")
//    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name="name")
    private String name;

    @Column(name="cost")
    private int cost;

    @Column(name="attribute")
    private String attribute;

    @Column(name="entry",length=1000)
    private String entry;

    @Column(name="sprite")
    private String sprite;

    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public String getName() { return name; }

    public void setName(String name) { this.name = name; }

    public int getCost() { return cost; }

    public void setCost(int cost) { this.cost = cost; }

    public String getAttribute() { return attribute; }

    public void setAttribute(String attribute) { this.attribute = attribute; }

    public String getEntry() { return entry; }

    public void setEntry(String entry) { this.entry = entry; }

    public String getSprite() { return sprite; }

    public void setSprite(String sprite) { this.sprite = sprite; }

}
