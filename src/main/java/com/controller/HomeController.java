package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.ibm.internal.assignment.entity.User;
import com.ibm.internal.assignment.entity.manager.UserDetailManager;
import com.ibm.internal.assignment.entity.manager.CityManager;
import com.ibm.internal.assignment.entity.manager.CompanyManager;
import com.ibm.internal.assignment.entity.manager.CourtManager;
import com.spec.CaseSpec;
@Controller
@RequestMapping("/")

public class HomeController {
	
	@RequestMapping( method = RequestMethod.GET)
	 public ModelAndView userForm() {
		ModelAndView modelAndView = new ModelAndView("home");
		
		return modelAndView;
	 }
	@RequestMapping( method = RequestMethod.GET,value = "welcome")
	 public ModelAndView welcome() {
		ModelAndView modelAndView = new ModelAndView("welcome");
		
		return modelAndView;
	 }	
	
}

