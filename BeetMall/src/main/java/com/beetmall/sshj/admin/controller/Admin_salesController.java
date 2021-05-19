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
public class Admin_salesController {
	@Inject
	ABoardService adminService;
	////////////////////매출 관리////////////////////////////////
	 	
	//판매내역 보기
	@RequestMapping("/salesListA")
	public ModelAndView salesListA() {
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("/admin/salesListA");
		return mav;
	}  	
	//매출 분석
	@RequestMapping("/salesAnalasysA")
	public ModelAndView salesAnalasysA() {
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("/admin/salesAnalasysA");
		return mav;
	} 	
	//카테고리별 매출 분석
	@RequestMapping("/salesCateAnalasysA")
	public ModelAndView salesCateAnalasysA() {
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("/admin/salesCateAnalasysA");
		return mav;
	} 
		
	
}