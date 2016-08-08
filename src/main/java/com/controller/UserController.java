package com.controller;

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

@Controller
@RequestMapping("/")

public class UserController {
	@Autowired
	UserManager usermanager;
	
	
	@RequestMapping(value = "user", method = RequestMethod.GET)
	 public ModelAndView userForm() {
		return new ModelAndView("user");
	 }
	@RequestMapping(value = "user", method = RequestMethod.POST)
	 public String userFormSubmit(User user,HttpSession session) {
		user.setPassword(""+Math.random());
		user.setType("Client");
		System.out.println(user.toString());
		User client=usermanager.save(user);
		session.setAttribute("Client", client);
		return "redirect:case";
		/*ModelAndView modelAndView = new ModelAndView("case");
		modelAndView.addObject("client", client);
		return modelAndView;*/
	 }
}

