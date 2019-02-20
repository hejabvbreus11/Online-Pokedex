package com.xrom.ssh.controller;

import com.xrom.ssh.ajax.AjaxUtils;
import com.xrom.ssh.entity.Users;
import com.xrom.ssh.form.FormBean;
import com.xrom.ssh.service.UserService;
import com.xrom.ssh.service.UserService_impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("/form")
@SessionAttributes("formBean")
public class FormController {

    @Autowired(required=true)
    private UserService_impl userService;

    @Autowired(required=true)
    private UserService_impl userService_impl;

    // Invoked on every request

    @ModelAttribute
    public void ajaxAttribute(WebRequest request, Model model) {
        model.addAttribute("ajaxRequest", AjaxUtils.isAjaxRequest(request));
    }

    // Invoked initially to create the "form" attribute
    // Once created the "form" attribute comes from the HTTP session (see @SessionAttributes)

    @ModelAttribute("formBean")
    public FormBean createFormBean() {
        return new FormBean();
    }

    @GetMapping
    public void form() {
    }

    @PostMapping
    public String processSubmit(@Valid FormBean formBean, BindingResult result,
                                @ModelAttribute("ajaxRequest") boolean ajaxRequest,
                                Model model, RedirectAttributes redirectAttrs,HttpServletRequest request) {

        if (result.hasErrors()) {
            return null;
        }


        if(!(userService.getuserbyname(formBean.getFname())==null))
        {
            HttpSession session = request.getSession();
            model.addAttribute("session", session);
            session.setAttribute("errms","User already exists");
            return "index";
        }
        String message = "Form submitted successfully.  Bound " + formBean;
        Users user = new Users();
        user.setFname(formBean.getFname());
        user.setLname(formBean.getLname());
        user.setPassword(formBean.getPassword());
        user.setAddr(formBean.getAddr());
        user.setBirthdate(formBean.getBirthDate());
        user.setEmail(formBean.getEmail());
        user.setPhone(formBean.getPhone());
        user.setFav_generation(formBean.getFav_generation());
        user.setGender(formBean.getGender()?"boy":"girl");
        userService_impl.saveuser(user);


        // Success response handling
        if (ajaxRequest) {
            // prepare model for rendering success message in this request
            model.addAttribute("message", message);
            return null;
        }
        else {
            // store a success message for rendering on the next request after redirect
            // redirect back to the form to render the success message along with newly bound values
            redirectAttrs.addFlashAttribute("message", message);
//            return "redirect:/pokedex";
            return "login";
        }
    }

}