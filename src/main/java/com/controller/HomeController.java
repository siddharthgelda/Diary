package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")

public class HomeController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView userForm() {
        ModelAndView modelAndView = new ModelAndView("home");

        return modelAndView;
    }

    @RequestMapping(method = RequestMethod.GET, value = "welcome")
    public ModelAndView welcome() {
        ModelAndView modelAndView = new ModelAndView("welcome");

        return modelAndView;
    }

}
