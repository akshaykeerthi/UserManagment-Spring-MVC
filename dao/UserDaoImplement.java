package com.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.model.Customer;
import com.model.Login;
import com.model.User;

@Component
public class UserDaoImplement implements UserDao {

	@Autowired
	DataSource dataSource;

	@Autowired
	JdbcTemplate jdbcTemplate;

	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public User validateUser(Login login) {
		String qry = "select * from upload where username ='" + login.getUsername() + "' and password ='"
				+ login.getPassword() + "'";
		List<User> users = jdbcTemplate.query(qry, new UserMapper());

		return users.size() > 0 ? users.get(0) : null;
	}

	public class UserMapper implements RowMapper<User> {
		@Override
		public User mapRow(ResultSet rs, int rowNum) throws SQLException {
			User us = new User();
			us.setUsername(rs.getString("username"));
			us.setPassword(rs.getString("password"));
			us.setFname(rs.getString("fname"));
			return us;
		}
	}

	@Override
	public int register(User user) { // TODO Auto-generated method stub
		
		Date date1 = new Date(0000-00-00);
		LocalDate dob = LocalDate.parse(user.getDob());
		
		String qry = "insert into upload values(?,?,?,?,?,?,?,?,?)";
		Object[] args = new Object[] { user.getFname(), user.getLname(), user.getMobileno(), date1.valueOf(dob),
				user.getGender(), user.getAddress(), user.getNationality(), user.getUsername(), user.getPassword() };
		int out = jdbcTemplate.update(qry, args);
		return out;
	}
	
	public List<Customer> viewAllCustomer(){
		String qry = "select * from upload_customer";
		List<Customer> customer = jdbcTemplate.query(qry,new CustomerMapper());
		
		return customer.size() > 0 ? customer : null;
	}
	
	class CustomerMapper implements RowMapper<Customer>{

		@Override
		public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
			// TODO Auto-generated method stub
			Customer out = new Customer();
			out.setId(rs.getInt("cust_id"));
			out.setFname(rs.getString("fname"));
			out.setLname(rs.getString("lname"));
			out.setMobileno(rs.getLong("mobileno"));
			out.setDob(rs.getString("dob"));
			out.setGender(rs.getString("gender"));
			out.setAddress(rs.getString("address"));
			out.setNationality(rs.getString("nationality"));
			out.setUsername(rs.getString("username"));
			return out;
		}
		
	}
	
	public List<Customer> viewCustomerByID( int id){
		String qry = "select * from upload_customer where cust_id = "+id;
		List<Customer> customer = jdbcTemplate.query(qry,new CustomerMapper());
		
		return customer.size() > 0 ? customer : null;
	}
	
	public  int updateID(int id, Customer customer) {

		Date date1= new Date(0000-00-00);
		
		LocalDate dob=LocalDate.parse(customer.getDob());
		
		String query="update upload_customer set fname=?, lname=?, mobileno=?, dob=?, gender=?, address=?, nationality=?, username=?, password=? where cust_id= ?";
		JdbcTemplate temp=new JdbcTemplate(dataSource);
		Object[] arg =new Object[] {customer.getFname(),customer.getLname(), customer.getMobileno(), date1.valueOf(dob), customer.getGender(), customer.getAddress(), customer.getNationality(), customer.getUsername(), customer.getPassword(),customer.getId()};
		int out=temp.update(query,arg);
		return out;
	}
	
	
	
	public int deleteID(String username) {
		
		String qry = "delete upload_customer where username= '"+username+"' " ;
		int out = jdbcTemplate.update(qry);
		return out;
	}
	
	
	public int addEmployee(Customer customer) {
		
		Date date1= new Date(0000-00-00);
		LocalDate dob=LocalDate.parse(customer.getDob());
		
		String query="insert into upload_customer values(?,?,?,?,?,?,?,?,?,?)";
		JdbcTemplate temp=new JdbcTemplate(dataSource);
		Object[] arg =new Object[] {customer.getId(),customer.getFname(),customer.getLname(), customer.getMobileno(), date1.valueOf(dob), customer.getGender(), customer.getAddress(), customer.getNationality(), customer.getUsername(), customer.getPassword()};
		int out=temp.update(query,arg);
		return out;
	}
	
	
	
	
	
	

}
