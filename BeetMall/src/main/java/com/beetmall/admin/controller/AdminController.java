package com.beetmall.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.beetmall.sshj.vo.MemberVO;
import com.beetmall.sshj.service.AdminBoardService;
import com.beetmall.sshj.vo.AdminBoardVO;

@Controller
public class AdminController {
	@Autowired
	AdminBoardService BoardService;
	
	////admin HomePage//// 
	@RequestMapping("/adminHome")
	public String adminHome() { 
		System.out.println("aaaa");
		 return "adminHome"; 
	}
	
	//////////////////////일반회원 관리////////////////////////////////
	
	//목록보기
	@RequestMapping("/customerListA")
	public ModelAndView customerListA() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/admin/customerListA");
		return mav;
	}
	
	//탈퇴회원보기
	@RequestMapping("/customerLeaveList")
	public ModelAndView customerLeaveList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/admin/customerLeaveList");
		return mav;
	}
	
	//블랙리스트 보기
	@RequestMapping("/customerBlackList")
	public ModelAndView customerBlackList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/admin/customerBlackList");
		return mav;
	} 
	
	
	//////////////////////판매자 관리////////////////////////////////
	//목록보기
		@RequestMapping("/sellerListA")
		public ModelAndView sellerListA() {
			ModelAndView mav = new ModelAndView();
			mav.addObject("list", boardService.boardAllRecord());
			mav.setViewName("/admin/sellerListA");
			return mav;
		}
		
	//탈퇴 판매자 목록보기
		@RequestMapping("/sellerLeaveList")
		public ModelAndView sellerLeaveList() {
			ModelAndView mav = new ModelAndView();
			mav.addObject("list", boardService.boardAllRecord());
			mav.setViewName("/admin/sellerLeaveList");
			return mav;
		}
	//판매자 블랙리스트 보기
		@RequestMapping("/sellerBlackList")
		public ModelAndView sellerBlackList() {
			ModelAndView mav = new ModelAndView();
			mav.addObject("list", boardService.boardAllRecord());
			mav.setViewName("/admin/sellerBlackList");
			return mav;
		} 
		
	//////////////////////공지 관리///////////////////////////////////// 
	@RequestMapping("/noticeBoardList")
	public ModelAndView noticeBoardList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/admin/noticeBoardList");
		return mav;
	}
	
	@RequestMapping("/noticeBoardWrite")
	public String noticeBoardWrite() { 
		 return "/admin/noticeBoardWrite"; 
	}
	
	@RequestMapping("/productListA")
	public ModelAndView productListA() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/admin/productListA");
		return mav;
	}
	
	@RequestMapping("/reviewListA")
	public ModelAndView reviewListA() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/admin/reviewListA");
		return mav;
	}
	
	@RequestMapping("/recipeListA")
	public ModelAndView recipeListA() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/admin/recipeListA");
		return mav;
	}
	
	@RequestMapping("/reportListA")
	public ModelAndView reportListA() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/admin/reportListA");
		return mav;
	}
	
	/////////////////////////고객센터//////////////////////
 @RequestMapping("/csQuestionA")
	public ModelAndView csQuestionA() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/admin/csQuestionA");
		return mav;
	}
 @RequestMapping("/csQuestionBrowse")
	public ModelAndView csQuestionBrowse() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/admin/csQuestionBrowse");
		return mav;
	}
 @RequestMapping("/csFAQ")
	public ModelAndView csFAQ() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/admin/csFAQ");
		return mav;
	}
	
	
	
	
 
	
	
	
	
	////////////////////////////////////////////////////////////////아래 복사해서 이용하기
	
	
	
	@Inject
	AdminBoardService boardService;
	
	@RequestMapping("/boardList")
	public ModelAndView boardList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/admin/boardList");
		return mav;
	}
	
	
	@RequestMapping("/boardWrite")
	public String boardWrite() { 
		 return "/admin/boardWrite"; 
	}
	
	@RequestMapping(value="/boardWriteOk", method=RequestMethod.POST)
	public ModelAndView boardWriteOk(AdminBoardVO vo, HttpSession session, HttpServletRequest req) {
		vo.setIp(req.getRemoteAddr());
			
		vo.setUserid(((MemberVO)session.getAttribute("logVo")).getUserid()); 
		//또는 MemberVO vo2 = (MemberVO)session.getAttribute("logVo");//id, 이름이 vo2에 저장
		//vo.setUserid(vo2.getUserid());	
		
		ModelAndView mav = new ModelAndView();
		if(boardService.boardInsert(vo)>0) { //글 등록 성공
			mav.setViewName("redirect:boardList");
		}else {//글 등록 실패
			mav.setViewName("redirect:boardWrite");
		}
			return mav;
	}
	
	//글 보기
	@RequestMapping("/boardView")
	public ModelAndView boardView(int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", boardService.boardSelect(no));
		mav.setViewName("admin/boardView");
		return mav;
	}
	
	//글 수정
	@RequestMapping("/boardEdit")
	public String boardEdit(int no, Model model) {
		model.addAttribute("vo", boardService.boardSelect(no));
		return "admin/boardEdit"; 
	}
	
	@RequestMapping(value="/board/boardEditOk", method=RequestMethod.POST)
	public ModelAndView boardEditOk(AdminBoardVO vo, HttpSession session) {
		vo.setUserid(((MemberVO)session.getAttribute("logVo")).getUserid()); 
		ModelAndView mav = new ModelAndView();
		
		if(boardService.boardUpdate(vo)>0) { //글 수정 성공
			mav.addObject("no", vo.getNo());
			mav.setViewName("redirect:/boardView");
		}else {
			mav.setViewName("redirect:boardEdit");
		} 
		return mav;
	}
}