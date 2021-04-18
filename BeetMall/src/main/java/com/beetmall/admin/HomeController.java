package com.beetmall.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
 
@Controller
public class HomeController {
	public JdbcTemplate jdbcTemplate; 
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "home";
	} 
}
