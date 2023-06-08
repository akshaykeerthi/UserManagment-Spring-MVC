package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.User;
import com.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class RegistrationController {
	
	@Autowired
	public UserService userservice = null;
	
 
	 @RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	  public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
	      @ModelAttribute("user") User user) {

	    int out =  userservice.register(user);
	    ModelAndView mav = null;
	    
	    if(out > 0) {
	    	mav = new ModelAndView("login");
	    	mav.addObject("message","Registration Successfull");
	    }else {
	    	mav = new ModelAndView("register");
	    	mav.addObject("message","Registration UnSuccessfull");
	    }
		return mav;
	  }

}
