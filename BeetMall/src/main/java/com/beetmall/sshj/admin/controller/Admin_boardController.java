package com.beetmall.sshj.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beetmall.sshj.admin.service.ABoardService;
import com.beetmall.sshj.admin.vo.ABoardVO;
import com.beetmall.sshj.admin.vo.AMemberVO;
import com.beetmall.sshj.custom.vo.PageSearchVO;
 

@Controller
public class Admin_boardController { 
	@Inject
	ABoardService boardService;
	//////////////////////공지 관리///////////////////////////////////// 
	//공지 목록 보기
	@RequestMapping("/noticeBoardList")
	public ModelAndView noticeBoardList(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mav = new ModelAndView();
		String pageNumStr = req.getParameter("pageNum");
		
		PageSearchVO pageVO = new PageSearchVO();
		if(pageNumStr != null) { 
			pageVO.setPageNum(Integer.parseInt(pageNumStr));
		}
		//검색어, 검색키
		pageVO.setSearchKey(req.getParameter("searchKey"));
		pageVO.setSearchWord(req.getParameter("searchWord"));
		pageVO.setTotalRecord(boardService.noticeList(pageVO));
		
		mav.addObject("list",boardService.noticeAllRecord(pageVO));
		mav.addObject("pageVO",pageVO);
				
		mav.setViewName("/admin/noticeBoardList");
		return mav;
	}
	//공지 작성하기
	@RequestMapping("/noticeBoardWrite")
	public String noticeBoardWrite() { 
		 return "/admin/noticeBoardWrite"; 
	}
	
	//공지 넘버 생성하기
	@RequestMapping("/noticeBoardWrite")
	@ResponseBody
	public int getInfonum() { 
		int infonum = boardService.getInfonum();
		return infonum;
	}
	
	//공지 작성하기    
	  	@RequestMapping(value="/noticeBoardWriteOk", method=RequestMethod.POST)
	public ModelAndView noticeBoardWriteOk(ABoardVO vo, HttpServletRequest req, HttpSession session) { 
	 	vo.setUserid(((AMemberVO)session.getAttribute("logVo")).getUserid()); 
  	
		ModelAndView mav = new ModelAndView();
		if(boardService.boardInsert(vo)>0) { //글 등록 성공
			mav.setViewName("redirect:noticeBoardList");
		}else {//글 등록 실패
			mav.setViewName("redirect:noticeBoardWrite");
		}
			return mav;
	}
	 
	//공지 수정하기
	@RequestMapping("/noticeBoardEdit")
	public String noticeBoardEdit(int no, Model model) { 
		model.addAttribute("vo", boardService.boardSelect(no));
		return "/admin/noticeBoardEdit"; 
	}
	
	//공지 수정하기
	/*	@RequestMapping(value="/board/boardEditOk", method=RequestMethod.POST)
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
	}*/
	
	//공지 삭제하기
	/*@RequestMapping("/noticeBoardDel")
	public ModelAndView noticeBoardDel(int infonum, HttpSession session) {  
		 ModelAndView mav = new ModelAndView();
		 MemberVO vo = (MemberVO)session.getAttribute("logVo");
			if(boardService.boardDel(infonum, vo.getUserid())>0){//삭제 성공시
				mav.setViewName("redirect:noticeBoardList");
			}else {//삭제 실패
				mav.addObject("infonum", infonum);
				mav.setViewName("redirect:noticeBoardList");
			}
			return mav;
		}*/
	 
  
	
}
	
	
	
  
	
	 