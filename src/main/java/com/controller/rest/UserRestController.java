/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entity.User;
import com.entity.manager.UserManager;
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
