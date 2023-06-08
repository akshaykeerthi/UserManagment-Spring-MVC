package com.dao;

import java.util.List;

import com.model.Customer;
import com.model.Login;
import com.model.User;

public interface UserDao {
	
	
	User validateUser(Login login);
	int register(User user);
	List<Customer> viewAllCustomer();
	//int deleteID(int id);
	int deleteID(String username);
	 int addEmployee(Customer customer);
	 List<Customer> viewCustomerByID( int id);
	 int updateID(int id, Customer customer) ;
}
