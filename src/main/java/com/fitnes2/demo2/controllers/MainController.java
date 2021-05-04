package com.fitnes2.demo2.controllers;

import com.fitnes2.demo2.configure_securityWeb.WebSecurityConfig;
import com.fitnes2.demo2.java_classes.Authorize_proverka;
import com.fitnes2.demo2.model.Role;
import com.fitnes2.demo2.repositoryes.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MainController {
    @Autowired
    RoleRepository roleRepository;
    @Autowired
    WebSecurityConfig web;
    private String username;

    @GetMapping("/")
    public String home( Model model) {
        username = web.getCurrentUsername();
        model.addAttribute("username", username);
        return "home";
    }

    @GetMapping("/home")
    public String home_1( Model model) {
        username = web.getCurrentUsername();
        model.addAttribute("username", username);
        return "home";
    }

    @GetMapping("/login")
    public String Login(Model model) {
            return "login";
        }

}
