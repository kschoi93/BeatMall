package com.beetmall.sshj.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beetmall.sshj.admin.service.Admin_BoardService;
import com.beetmall.sshj.admin.vo.AdminBoardVO;
 

@Controller
public class Admin_designController { 
	@Inject
	Admin_BoardService boardService;
	 
	///////////////////////디자인 관리///////////////////////////////////
	//디자인 관리
	@RequestMapping("/boardDesignMng")
	public ModelAndView boardDesignMng() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.noticeList());
		mav.setViewName("/admin/boardDesignMng");
		return mav;
	}
	
	
	
	
	
	
	
}
	
	
	
  
	
	 