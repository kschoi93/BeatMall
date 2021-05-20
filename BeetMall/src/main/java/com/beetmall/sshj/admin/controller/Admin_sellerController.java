package com.beetmall.sshj.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession; 
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.beetmall.sshj.admin.service.Admin_BoardService;
import com.beetmall.sshj.admin.vo.AdminBoardVO; 

@Controller
public class Admin_sellerController {
	@Inject
	Admin_BoardService adminService;
	 
	//////////////////////판매자 관리////////////////////////////////
	//목록보기
		@RequestMapping("/sellerListA")
		public ModelAndView sellerListA() {
			ModelAndView mav = new ModelAndView(); 
			mav.setViewName("/admin/sellerListA");
			return mav;
		}
		
	//탈퇴 판매자 목록보기
		@RequestMapping("/sellerLeaveList")
		public ModelAndView sellerLeaveList() {
			ModelAndView mav = new ModelAndView();
			mav.addObject("list", adminService.noticeList());
			mav.setViewName("/admin/sellerLeaveList");
			return mav;
		}
	//판매자 블랙리스트 보기
		@RequestMapping("/sellerBlackList")
		public ModelAndView sellerBlackList() {
			ModelAndView mav = new ModelAndView();
			mav.addObject("list", adminService.noticeList());
			mav.setViewName("/admin/sellerBlackList");
			return mav;
		} 
	//판매자 정보 수정
		@RequestMapping("/sellerInfoEditA")
		public ModelAndView sellerInfoEditA() {
			ModelAndView mav = new ModelAndView();
			mav.addObject("list", adminService.noticeList());
			mav.setViewName("/admin/sellerInfoEditA"
					+ "");
			return mav;
		} 
		 
		 
	 
}