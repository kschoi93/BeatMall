package com.beetmall.sshj.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.beetmall.sshj.admin.service.ABoardService;
import com.beetmall.sshj.admin.service.AMemberService;
import com.beetmall.sshj.admin.vo.AMemberVO; 

@Controller
public class Admin_HomeController { 
	@Inject
	ABoardService adminService;
	@Inject
	AMemberService aMemberService;
	//////////////////////관리자 홈페이지///////////////////////////////////// 
	@RequestMapping("/adminHome")
	public ModelAndView noticeBoardList() {
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("/admin/adminHome");
		return mav;
	}
	
	//로그인
	@RequestMapping(value="/AdminloginOk", method=RequestMethod.POST)
	public ModelAndView loginOk(AMemberVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		
		//logVo가 null이면 로그인 실패, not null이면 VO에 아이디, 이름을 저장하여 리턴받는다 
		AMemberVO logVo = aMemberService.loginCheck(vo);
		
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