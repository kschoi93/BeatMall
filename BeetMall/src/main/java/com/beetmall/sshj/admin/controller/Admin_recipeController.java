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
public class Admin_recipeController { 
	@Inject
	Admin_BoardService boardService;
	 
	///////////////////////레시피 관리///////////////////////////////////
	//레시피 목록 보기
	@RequestMapping("/boardRecipeListA")
	public ModelAndView boardRecipeListA() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.noticeList());
		mav.setViewName("/admin/boardRecipeListA");
		return mav;
	}
	//레시피 작성하기
	@RequestMapping("/recipeWriteA")
	public ModelAndView recipeWriteA() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.noticeList());
		mav.setViewName("/admin/recipeWriteA");
		return mav;
	}
	
  
	
}
	
	
	
  
	
	 