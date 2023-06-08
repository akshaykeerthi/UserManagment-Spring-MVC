package com.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.Customer;
import com.model.User;
import com.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@Controller
public class CustomerController {
	
	@Autowired
	public UserService userservice = null;
	
	@RequestMapping(value = "/delete")
	  public ModelAndView deleteUser(HttpServletRequest request, HttpServletResponse response, @RequestParam(name="username") String username)
	       {
		System.out.println(username);
	    int out =  userservice.deleteID(username);
	    ModelAndView mav = null;
	    
	    if(out > 0) {
	    	List<Customer> customer = userservice.viewAllCustomer();
	    	mav = new ModelAndView("details");
	    	mav.addObject("custList",customer);
	    }
		return mav;
	  }
	
	@RequestMapping(value= "/details")
	public ModelAndView displayUser(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView mav = new ModelAndView("details");
		 List<Customer> cust =  userservice.viewAllCustomer();
	      System.out.println(cust);
			mav.addObject("custList",cust);
		
		return mav;	
	}
	
	@RequestMapping(value = "/registerCustomer", method = RequestMethod.POST)
	  public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
	      @ModelAttribute("customer") Customer customer) {

	    int out =  userservice.addEmployee(customer);
	    ModelAndView mav = null;
	    
	    if(out > 0) {
	    	mav = new ModelAndView("details");
	    	mav.addObject("message","Registration Successfull");
	    }else {
	    	mav = new ModelAndView("addCustomer");
	    	mav.addObject("message","Registration Un-Successfull");
	    }
		return mav;
	  }
	
	@RequestMapping(value= "/edit")
	public ModelAndView updateCustomer(HttpServletRequest request, HttpServletResponse response, @RequestParam(name="id") int id) {
		
		ModelAndView mav = new ModelAndView("update");
		 List<Customer> cust =  userservice.viewCustomerByID( id);
	      System.out.println(cust);
			mav.addObject("custList",cust);
		
		return mav;	
	}
	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	public ModelAndView updateID(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("edit")Customer customer, @RequestParam (name="id") int id) {
		int out = userservice.updateID(id, customer);
		ModelAndView mav = null;
		if(out > 0) {
			mav = new ModelAndView("details");
			mav.addObject("message","Update Successfully");
			 List<Customer> cust =  userservice.viewAllCustomer();
		      System.out.println(cust);
				mav.addObject("custList",cust);
		}else {
			mav = new ModelAndView("update");
			mav.addObject("message","Update Un-Successfully");
		}
		return mav;
	}

}
