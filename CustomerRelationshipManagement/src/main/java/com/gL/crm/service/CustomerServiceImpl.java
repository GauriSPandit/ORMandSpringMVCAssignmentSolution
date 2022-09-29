package com.gL.crm.service;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.gL.crm.entity.Customer;
import javax.transaction.Transactional;

@Repository
public class CustomerServiceImpl implements CustomerService {

//	creating session
	private SessionFactory sessionFactory;
	private Session session;
	
	@Autowired
	CustomerServiceImpl(SessionFactory sessionFactory) {
		// TODO Auto-generated constructor stub
		this.sessionFactory = sessionFactory;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			// TODO: handle exception
			session = sessionFactory.openSession();
		}
	}
	
	@Transactional
	public List<Customer> findAll() {
		// TODO Auto-generated method stub
		Transaction tx = session.beginTransaction();
		List <Customer> customers = session.createQuery("from Customer").list();
		tx.commit();
		return customers;
	}

	@Transactional
	public Customer findById(int theId) {
		// TODO Auto-generated method stub
		Customer customer = new Customer();
		
		Transaction tx =session.beginTransaction();
		customer = session.get(Customer.class, theId);
		tx.commit();
		return customer;
	}

	@Transactional
	public void save(Customer theCustomer) {
		// TODO Auto-generated method stub
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(theCustomer);
		tx.commit();
	}

	@Transactional
	public void deleteById(int theId) {
		// TODO Auto-generated method stub
		Transaction tx = session.beginTransaction();
		Customer customer = session.get(Customer.class, theId);
		session.delete(customer);
		tx.commit();
	}


}
