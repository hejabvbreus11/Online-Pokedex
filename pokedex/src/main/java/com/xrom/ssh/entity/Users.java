package com.xrom.ssh.entity;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Past;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.binary.StringUtils;
import java.util.Date;

@Entity
@Data
@Table(name = "users")
public class Users {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name="fname")
    private String fname;

    @Column(name="lname")
    private String lname;

    @Column(name="gender")
    private String gender;

    @Column(name="email")
    private String email;

    @Column(name="phone")
    private String phone;

    @Column(name="addr")
    private String addr;

    @Column(name="password")
    private String password;

    @Column(name="fav_generation")
    private String fav_generation;

    @DateTimeFormat(iso= DateTimeFormat.ISO.DATE)
    @Past
    @Column(name="birthdate")
    private Date birthdate;

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public Date getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return StringUtils.newStringUtf8(Base64.decodeBase64(this.password));
    }

    public void setPassword(String password){ this.password=Base64.encodeBase64String(StringUtils.getBytesUtf8(password)); }

    public String getFav_generation() { return fav_generation; }

    public void setFav_generation(String fav_generation) { this.fav_generation = fav_generation; }
}
