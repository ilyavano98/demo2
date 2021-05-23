package com.fitnes2.demo2.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Set;

@Entity
public class User_training {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Long id_username;
    private String id_exercises;

    public User_training(Long id_username) {
        this.id_username = id_username;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId_username() {
        return id_username;
    }

    public void setId_username(Long id_username) {
        this.id_username = id_username;
    }

    public String getId_exercises() {
        return id_exercises;
    }

    public void setId_exercises(String id_exercises) {
        this.id_exercises = id_exercises;
    }
}
