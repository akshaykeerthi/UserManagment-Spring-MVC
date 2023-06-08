package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Customer;
import com.model.Login;
import com.model.User;
import com.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class SignInController {

	@Autowired
	public UserService userservice = null;

	
	  @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
	      @ModelAttribute("login") Login login) {
	    ModelAndView mav = null;

	    User user = userservice.validateUser(login);

	    if (user != null) {
	      mav = new ModelAndView("homeLogin");
	      mav.addObject("name", user.getFname());
	      List<Customer> cust =  userservice.viewAllCustomer();
	      System.out.println(cust);
			mav.addObject("custList",cust);
	    } else {
	      mav = new ModelAndView("login");
	      mav.addObject("message", "INVALID USERNAME / PASSWORD !!");
	    }
	    return mav;
	  }
}