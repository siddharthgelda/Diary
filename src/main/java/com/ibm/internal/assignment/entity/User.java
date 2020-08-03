package com.ibm.internal.assignment.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")

public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "email", unique = true)
    private String email;

    private String Name;

    private String LastName;

    private String MobileNo;

    private String LandlineNumber;

    private String Address;

    private String password;
    private String Type;
    private Integer Age;
    private String Gender;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
        return Type;
    }

    public void setType(String type) {
        Type = type;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String lastName) {
        LastName = lastName;
    }

    public String getMobileNo() {
        return MobileNo;
    }

    public void setMobileNo(String mobileNo) {
        MobileNo = mobileNo;
    }

    public String getLandlineNumber() {
        return LandlineNumber;
    }

    public void setLandlineNumber(String landlineNumber) {
        LandlineNumber = landlineNumber;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public Integer getAge() {
        return Age;
    }

    public void setAge(Integer age) {
        Age = age;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String gender) {
        Gender = gender;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", email=" + email + ", Name=" + Name + ", LastName=" + LastName + ", MobileNo="
                + MobileNo + ", LandlineNumber=" + LandlineNumber + ", Address=" + Address + ", password=" + password
                + ", Type=" + Type + ", Age=" + Age + ", Gender=" + Gender + "]";
    }

}
