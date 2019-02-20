package com.xrom.ssh.form;

import java.util.Date;

import javax.validation.constraints.Past;

import com.xrom.ssh.MaskFormat;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public class FormBean {

    @NotEmpty
    private String fname;

    @NotEmpty
    private String lname;

    @NotEmpty
    private String password;

    @DateTimeFormat(iso=ISO.DATE)
    @Past
    private Date birthDate;

    @MaskFormat("(###) ###-####")
    private String phone;

    @NotEmpty
    private String email;

    private boolean gender;

    @NotEmpty
    private String fav_generation;

    @NotEmpty
    private String addr;

    public String getFname() { return fname; }

    public void setFname(String fname) { this.fname = fname; }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getAddr() { return addr; }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getEmail() { return email; }

    public void setEmail(String email) { this.email = email; }

//    public int getAge() {
//        return age;
//    }
//
//    public void setAge(int age) {
//        this.age = age;
//    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean getGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFav_generation() { return fav_generation; }

    public void setFav_generation(String fav_generation) { this.fav_generation = fav_generation; }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("properties firstname=");
        if (fname != null) {
            sb.append("'").append(fname).append("', ");
        } else {
            sb.append(fname).append(", ");
        }
        sb.append("properties lastname=");
        if (lname != null) {
            sb.append("'").append(lname).append("', ");
        } else {
            sb.append(lname).append(", ");
        }
//        sb.append("age=").append(age).append(", ");
        sb.append("birthDate=").append(birthDate).append(", ");
        sb.append("phone=");
        if (phone != null) {
            sb.append("'").append(phone).append("', ");
        } else {
            sb.append(phone).append(", ");
        }
        sb.append("address=").append(addr).append(",");
        sb.append("email=").append(email).append(",");
        sb.append("password=").append(password).append(",");
        sb.append("gender=").append(gender?"boy":"girl");
        sb.append("fav_generation=").append(fav_generation);
        return sb.toString();
    }
}

