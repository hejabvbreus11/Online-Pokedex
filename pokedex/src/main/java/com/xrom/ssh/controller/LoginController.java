package com.xrom.ssh.controller;

import com.xrom.ssh.entity.Users;
import com.xrom.ssh.service.UserService_impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired(required=true)
    private UserService_impl userService;

    @RequestMapping(value="/login")
    public  String login(){
        return "login";
    }

    @RequestMapping(value="/loginpost")
    public String loginpost(HttpSession session, String fname, String password,Model model) throws Exception{
        if(!(userService.getuserbyname(fname)==(null))){
            if(userService.getuserbyname(fname).getPassword().equals(password)){
                Users user = userService.getuserbyname(fname);
                session.setAttribute("username", user.getFname()+" "+user.getLname());
                String username = (String)session.getAttribute("username");
                if(username.equals("Jarvis Yao")){session.setAttribute("role","supreme user");}
                else {session.setAttribute("role","common user");}
                session.setAttribute("currentuser",user);
                System.out.println("successfully log in");
                if(user.getFav_generation().equals("1")) return "redirect:/pokedex?page=1";
                else if (user.getFav_generation().equals("2")) return "redirect:/pokedex?page=10";
                else if (user.getFav_generation().equals("3")) return "redirect:/pokedex?page=16";
                else if (user.getFav_generation().equals("4")) return "redirect:/pokedex?page=25";
                else if (user.getFav_generation().equals("5")) return "redirect:/pokedex?page=31";
                else if (user.getFav_generation().equals("6")) return "redirect:/pokedex?page=41";
                else if (user.getFav_generation().equals("7")) return "redirect:/pokedex?page=46";
                else return "redirect:/pokedex?page=1";
            }
            else {
                System.out.println("insidekey:"+userService.getuserbyname(fname).getPassword());
                System.out.println("outsidekey:"+password);
                System.out.println("password does not match!");
                model.addAttribute("errmassage", "Your name or password is not correct");
                return "login";
            }
        }
        else {
            System.out.println("name does not exist!");
            model.addAttribute("errmassage", "Your name or password is not correct");
            return "login";
        }
    }

    /**
     * @param session
     *          Session
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/logout")
    public String logout(HttpSession session) throws Exception{

        session.invalidate();

        return "index";
    }



}
