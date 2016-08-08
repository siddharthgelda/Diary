package com.ibm.internal.assignment.entity.manager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ibm.internal.assignment.entity.Court;
import com.ibm.internal.assignment.entity.User;
import com.ibm.internal.assignment.repository.CourtRepository;
import com.ibm.internal.assignment.repository.UserRepository;

@Service
public class UserManager {
	@Autowired
	private UserRepository userRepository;

	public User save(User user)
	{
		return userRepository.save(user);
	}

	public User getCase(Long Id)
	{
		return userRepository.getOne(Id);
	}




}
