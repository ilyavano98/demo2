package com.fitnes2.demo2.controllers;

import com.fitnes2.demo2.configure_securityWeb.WebSecurityConfig;
import com.fitnes2.demo2.model.Images;
import com.fitnes2.demo2.model.Training_exercises;
import com.fitnes2.demo2.repositoryes.Images_Repository;
import com.fitnes2.demo2.repositoryes.Training_exercises_Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.Optional;

@Controller
public class Training_exercises_Controller {
    @Autowired
    WebSecurityConfig web;
    private String username;
    @Autowired
    private Training_exercises_Repository exercises;
    @Autowired
    private Images_Repository img;

    @GetMapping("/training_exercises")
    public String training_home(Model model){
        Iterable<Training_exercises> ex = exercises.findAll();
        model.addAttribute("exercises", ex);
        username = web.getCurrentUsername();
        model.addAttribute("username", username);
        return "training_exercises";
    }

    @GetMapping("/training_exercises/{id}")
    public String viewPost_Training(@PathVariable(value = "id") long id, Model model) {
        Optional<Training_exercises> tr = exercises.findById(id);
        ArrayList<Training_exercises> res = new ArrayList<>();
        tr.ifPresent(res::add);
        model.addAttribute("training", res);
        ArrayList<Long> images_list = new ArrayList<Long>();
        ArrayList<Long> images_list_temp = new ArrayList<Long>();
        ArrayList<Images> result = new ArrayList<>();
        for(Training_exercises i : res){
            images_list_temp = i.function_list();
        }
        for(Long iter  : images_list_temp)
        {
            Optional<Images> image = img.findById(iter);
            image.ifPresent(result::add);
        }
        model.addAttribute("images_list", result);
        username = web.getCurrentUsername();
        model.addAttribute("username", username);
        return "training_exercises_details";
    }

}
