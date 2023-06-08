package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dao.UserDao;
import com.model.Customer;
import com.model.Login;
import com.model.User;

@Component
public class UserServiceImplement implements UserService {
	
	  @Autowired
	  public UserDao userDao = null;

	  public int register(User user) {
	    return userDao.register(user);
	  }

	  public User validateUser(Login login) {
	    return userDao.validateUser(login);
	  }

	@Override
	public List<Customer> viewAllCustomer() {
		
		return userDao.viewAllCustomer();
	}

	@Override
	public int register(Customer customer) {
		// TODO Auto-generated method stub
		return userDao.addEmployee(customer);
	}

	

	@Override
	public int deleteID(String username) {
		// TODO Auto-generated method stub
		return userDao.deleteID(username);
	}



	@Override
	public int addEmployee(Customer customer) {
		// TODO Auto-generated method stub
		return userDao.addEmployee(customer);
	}

	@Override
	public List<Customer> viewCustomerByID(int id) {
		// TODO Auto-generated method stub
		return userDao.viewCustomerByID(id);
	}

	@Override
	public int updateID(int id, Customer customer) {
		// TODO Auto-generated method stub
		return userDao.updateID(id, customer);
	}

	
	

}
