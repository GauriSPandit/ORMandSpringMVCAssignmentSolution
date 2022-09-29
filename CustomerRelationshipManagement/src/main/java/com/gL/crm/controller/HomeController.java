package com.gL.crm.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gL.crm.entity.Customer;
import com.gL.crm.service.CustomerService;

@Controller
public class HomeController {
//    Autowiring service
	@Autowired CustomerService customerService;
	
//   Mapping home 
	@RequestMapping("/")
	public String homePage(Model theModel) {
		
		List<Customer> customers = customerService.findAll();
		theModel.addAttribute("Customers", customers);
 		return "home"; //home.jsp contains the list
	}
//	mapping to add new customer to database
	@RequestMapping("/addNewCustomer")
	public String addNewCustomer(Model theModel) {
		
		Customer customer = new Customer();
		theModel.addAttribute("Customer", customer);
		theModel.addAttribute("action","Add");
		return "add-update-form";
	}
//	mapping to update existing customers
	@RequestMapping("/updateCustomer")
	public String updateCustomer(Model theModel, @RequestParam ("id") int id) {
		
		Customer customer = customerService.findById(id);
		theModel.addAttribute("Customer", customer);
		theModel.addAttribute("action","Update");
		return "add-update-form";
	}
//after adding or updating saveCustomer method is called
	@PostMapping("/save")
	public String saveCustomer(Model theModel, @RequestParam ("id") int id, @RequestParam ("first_name") String first_name, 
			 					@RequestParam ("last_name") String last_name,  @RequestParam ("email") String email) 
	{
		
		Customer customer = new Customer();
		
		if(id != 0) { //checking wheather id is present, if yes customer is fetched and updated accordingly
			customer = customerService.findById(id);
		}
			customer.setFirst_name(first_name);//if id is not present data is added to new customer created
			customer.setLast_name(last_name);
			customer.setEmail(email);
		
		customerService.save(customer);
		return "redirect:/" ;//redirecting to home page
	}
//	mapping delete 
	@RequestMapping("/delete")
	public String deleteCustomer(Model theModel, @RequestParam("id") int id) {
		customerService.deleteById(id);
		return "redirect:/" ;
	}
}
