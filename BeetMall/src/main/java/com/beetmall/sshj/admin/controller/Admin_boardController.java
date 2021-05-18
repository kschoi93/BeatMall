package com.beetmall.sshj.admin.controller;

import javax.inject.Inject; 
import org.springframework.stereotype.Controller; 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beetmall.sshj.admin.service.BoardService;
 

@Controller
public class Admin_boardController { 
	@Inject
	BoardService boardService;
	//////////////////////공지 관리///////////////////////////////////// 
	//공지 목록 보기
	@RequestMapping("/noticeBoardList")
	public ModelAndView noticeBoardList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.noticeList());
		mav.setViewName("/admin/noticeBoardList");
		return mav;
	}
	//공지 목록 작성하기
	@RequestMapping("/noticeBoardWrite")
	public String noticeBoardWrite() { 
		 return "/admin/noticeBoardWrite"; 
	}
	//공지 번호 불러오기
	@ResponseBody
	@RequestMapping(value="/adminmapper/getInfonum.do", method="RequestMethod.GET")
		public int getInfonum() throws Throwable{
		return BoardService.getInfonum();
	}
	//공지 수정하기
	@RequestMapping("/noticeBoardEdit")
	public String noticeBoardEdit() { 
		 return "/admin/noticeBoardEdit"; 
	}
	//공지 삭제하기
	@RequestMapping("/noticeBoardDel")
	public ModelAndView noticeBoardDel(int infonum) {  
		 ModelAndView mav = new ModelAndView();
			
			if(boardService.boardDel(infonum)>0){//삭제 성공시
				mav.setViewName("redirect:noticeBoardList");
			}else {//삭제 실패
				mav.addObject("infonum", infonum);
				mav.setViewName("redirect:noticeBoardList");
			}
			return mav;
		}
	//리뷰 목록보기
	@RequestMapping("/reviewListA")
	public ModelAndView reviewListA() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.noticeList());
		mav.setViewName("/admin/reviewListA");
		return mav;
	}
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
	//디자인 관리
	@RequestMapping("/boardDesignMng")
	public ModelAndView boardDesignMng() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.noticeList());
		mav.setViewName("/admin/boardDesignMng");
		return mav;
	}
	
	
	
	
	
	
	
}
	
	
	
  
	
	 