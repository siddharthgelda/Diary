package com.entity;

import javax.persistence.*;

@Entity
@Table(name = "court")

public class Court {

    String Name;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    @Override
    public String toString() {
        return "Court [id=" + id + ", Name=" + Name + "]";
    }

}
