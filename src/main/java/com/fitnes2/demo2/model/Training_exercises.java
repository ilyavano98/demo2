package com.fitnes2.demo2.model;

import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Scanner;

@Entity
public class Training_exercises {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title,anons, full_text;
    private String images;



    
    public Training_exercises(Long id, String title, String full_text, String anons) {
        this.id = id;
        this.title = title;
        this.full_text = full_text;
        this.anons = anons;
    }

    public ArrayList<Long> function_list(){
        ArrayList<Long> images_list = new ArrayList<Long>();
        try (Scanner s = new Scanner(images)) {
            while (s.hasNextInt()) {
                Long num = s.nextLong();
                System.out.println(num);
                images_list.add(num);
            }
        }
        return images_list;
    }

    public String getAnons() {
        return anons;
    }

    public void setAnons(String anons) {
        this.anons = anons;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getFull_text() {
        return full_text;
    }

    public void setFull_text(String full_text) {
        this.full_text = full_text;
    }

    public Training_exercises() {
    }
}
