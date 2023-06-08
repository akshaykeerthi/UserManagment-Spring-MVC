package com.service;

import java.util.List;

import com.model.Customer;
import com.model.Login;
import com.model.User;

public interface UserService {

	

	  User validateUser(Login login);

	int register(User user);
	
	List<Customer> viewAllCustomer();

	int register(Customer customer);
	int addEmployee(Customer customer);

	List<Customer> viewCustomerByID( int id);

	int updateID(int id, Customer customer) ;

	int deleteID(String username);
	
	

}
