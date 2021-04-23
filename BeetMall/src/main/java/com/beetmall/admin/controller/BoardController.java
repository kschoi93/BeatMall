package com.beetmall.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession; 
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.beetmall.admin.service.BoardService;
import com.beetmall.admin.vo.BoardVO;
import com.beetmall.admin.vo.MemberVO;

@Controller
public class BoardController {
	@Inject
	BoardService BoardService;
	//////////////////////일반회원 관리////////////////////////////////
	
	//목록보기
	@RequestMapping("/customerList")
	public ModelAndView customerList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/board/customerList");
		return mav;
	}
	
	//탈퇴회원보기
	@RequestMapping("/customerLeaveList")
	public ModelAndView customerLeaveList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/board/customerLeaveList");
		return mav;
	}
	
	//블랙리스트 보기
	@RequestMapping("/customerBlackList")
	public ModelAndView customerBlackList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/board/customerBlackList");
		return mav;
	}
	
	//////////////////////판매자 관리////////////////////////////////
	//목록보기
		@RequestMapping("/sellerList")
		public ModelAndView sellerList() {
			ModelAndView mav = new ModelAndView();
			mav.addObject("list", boardService.boardAllRecord());
			mav.setViewName("/board/sellerList");
			return mav;
		}
	
	//////////////////////공지 관리///////////////////////////////////// 
	@RequestMapping("/noticeBoardList")
	public ModelAndView noticeBoardList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/board/noticeBoardList");
		return mav;
	}
	
	@RequestMapping("/noticeBoardWrite")
	public String noticeBoardWrite() { 
		 return "/board/noticeBoardWrite"; 
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	////////////////////////////////////////////////////////////////아래 복사해서 이용하기
	
	
	
	@Inject
	BoardService boardService;
	
	@RequestMapping("/boardList")
	public ModelAndView boardList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.boardAllRecord());
		mav.setViewName("/board/boardList");
		return mav;
	}
	
	
	@RequestMapping("/boardWrite")
	public String boardWrite() { 
		 return "/board/boardWrite"; 
	}
	
	@RequestMapping(value="/boardWriteOk", method=RequestMethod.POST)
	public ModelAndView boardWriteOk(BoardVO vo, HttpSession session, HttpServletRequest req) {
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
		mav.setViewName("board/boardView");
		return mav;
	}
	
	//글 수정
	@RequestMapping("/boardEdit")
	public String boardEdit(int no, Model model) {
		model.addAttribute("vo", boardService.boardSelect(no));
		return "board/boardEdit"; 
	}
	
	@RequestMapping(value="/board/boardEditOk", method=RequestMethod.POST)
	public ModelAndView boardEditOk(BoardVO vo, HttpSession session) {
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