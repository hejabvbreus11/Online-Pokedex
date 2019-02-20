package com.xrom.ssh.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Data
@Table(name = "evolution")
public class DB_evolution {

    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "evo1")
    private String evo1;

    @Column(name = "method1",length = 1000)
    private String method1;

    @Column(name = "evo2")
    private String evo2;

    @Column(name = "method2",length = 1000)
    private String method2;

    @Column(name = "evo3")
    private String evo3;

    public int getId() { return id; }

    public void setId(int id) { this.id = id; }

    public String getEvo1() { return evo1; }

    public void setEvo1(String evo1) { this.evo1 = evo1;}

    public String getMethod1() { return method1; }

    public void setMethod1(String method1) { this.method1 = method1;}

    public String getEvo2() { return evo2; }

    public void setEvo2(String evo2) { this.evo2 = evo2;}

    public String getMethod2() { return method2; }

    public void setMethod2(String method2) { this.method2 = method2;}

    public String getEvo3() { return evo3; }

    public void setEvo3(String evo3) { this.evo3 = evo3;}

}
