package com.ibm.internal.assignment.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "court")

public class Court {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    String Name;

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
