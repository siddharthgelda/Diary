package com.entity.manager;

import com.entity.User;
import com.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserManager {

    @Autowired
    private UserRepository userRepository;

    public User save(User user) {
        return userRepository.save(user);
    }

    public User getCase(Long Id) {
        return userRepository.getOne(Id);
    }

    public List<User> getAllUsers() {
        return userRepository.findAll();
    }
}
