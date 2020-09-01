/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller.rest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.ibm.internal.assignment.entity.User;
import com.ibm.internal.assignment.entity.manager.CityManager;
import com.ibm.internal.assignment.entity.manager.UserManager;
import java.util.List;
import org.springframework.web.bind.annotation.RestController;

@RestController

@RequestMapping("/users")

public class UserRestController {

    @Autowired
    UserManager usermanager;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public List<User> getUsers() {
        
        
        return usermanager.getAllUsers();
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public User userFormSubmit(@RequestBody User user) {
        user.setPassword("" + Math.random());
        user.setType("Client");
        System.out.println(user.toString());
        User client = usermanager.save(user);
        return client;
    }
}
