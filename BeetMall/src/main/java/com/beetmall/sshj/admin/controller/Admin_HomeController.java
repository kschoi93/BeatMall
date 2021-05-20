package com.beetmall.sshj.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.beetmall.sshj.admin.service.Admin_BoardService;
import com.beetmall.sshj.admin.service.Admin_MemberService;
import com.beetmall.sshj.admin.vo.Admin_MemberVO; 

@Controller
public class Admin_HomeController { 
	@Inject
	Admin_BoardService adminService;
	@Inject
	Admin_MemberService aMemberService;
	//////////////////////관리자 홈페이지///////////////////////////////////// 
	@RequestMapping("/adminHome")
	public ModelAndView noticeBoardList() {
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("/admin/adminHome");
		return mav;
	}
	
	//로그인
	@RequestMapping(value="/AdminloginOk", method=RequestMethod.POST)
	public ModelAndView loginOk(Admin_MemberVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		//logVo가 null이면 로그인 실패, not null이면 VO에 아이디, 이름을 저장하여 리턴받는다 
		Admin_MemberVO logVo = aMemberService.loginCheck(vo);
		
		if(logVo!=null) {//로그인 성공
			session.setAttribute("logVo", logVo);
			mav.setViewName("redirect:/adminHome");
		}else {//로그인 실패
			mav.setViewName("redirect:login");
		}
		return mav;
	}
	//로그아웃
	@RequestMapping("/Adminlogout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "adminHome";
	}
	
}