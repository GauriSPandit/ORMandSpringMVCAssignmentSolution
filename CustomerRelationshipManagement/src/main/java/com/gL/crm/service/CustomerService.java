package com.gL.crm.service;

import java.util.List;

import com.gL.crm.entity.Customer;

public interface CustomerService {
	
//	declaring various fetch methods

	public List<Customer> findAll();

	public Customer findById(int theId);

	public void save(Customer theCustomer);

	public void deleteById(int theId);


}
