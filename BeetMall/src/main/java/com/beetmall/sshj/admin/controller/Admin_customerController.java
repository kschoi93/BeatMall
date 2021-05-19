package com.beetmall.sshj.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession; 
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.beetmall.sshj.admin.service.ABoardService;
import com.beetmall.sshj.admin.vo.ABoardVO; 

@Controller
public class Admin_customerController {
	@Inject
	ABoardService adminService;
	//////////////////////일반회원 관리////////////////////////////////
	
	//목록보기
	@RequestMapping("/customerListA")
	public ModelAndView customerListA() {
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("/admin/customerListA");
		return mav;
	}
	//회원정보 수정
	@RequestMapping("/boardCustomerInfoEdit")
	public ModelAndView boardCustomerInfoEdit() {
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("/admin/boardCustomerInfoEdit");
		return mav;
	}
	//탈퇴회원보기
	@RequestMapping("/customerLeaveList")
	public ModelAndView customerLeaveList() {
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("/admin/customerLeaveList");
		return mav;
	}
	
	//블랙리스트 보기
	@RequestMapping("/customerBlackList")
	public ModelAndView customerBlackList() {
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("/admin/customerBlackList");
		return mav;
	} 
	
	
	  
	 
}