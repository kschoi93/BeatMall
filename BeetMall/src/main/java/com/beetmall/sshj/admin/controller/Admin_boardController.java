package com.beetmall.sshj.admin.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beetmall.sshj.admin.service.Admin_BoardService;
import com.beetmall.sshj.admin.vo.AdminBoardVO;
import com.beetmall.sshj.admin.vo.Admin_Board_PageVO; 
 

@Controller
public class Admin_boardController { 
	@Inject
	Admin_BoardService boardService;
	//////////////////////공지 관리///////////////////////////////////// 
	//공지 목록 보기
	@RequestMapping("/noticeBoardList")
	public ModelAndView noticeBoardList(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		Admin_Board_PageVO pageVO = new Admin_Board_PageVO();
		
		String pageNumStr = req.getParameter("pageNum");
		if(pageNumStr != null) { 
			pageVO.setPageNum(Integer.parseInt(pageNumStr));
		}
		 
		pageVO.setSearchKey(req.getParameter("searchKey"));
		pageVO.setSearchWord(req.getParameter("searchWord"));
	//	pageVO.setTotalRecord(boardService.noticeAllRecord(pageVO));
		
		mav.addObject("list", boardService.noticeBoardList(pageVO));
		mav.addObject("pageVO",pageVO);
		
		mav.setViewName("/admin/noticeBoardList");
		
		return mav;
	}
	//공지 작성하기
/*	@RequestMapping("/noticeBoardWrite")
	public String noticeBoardWrite() { 
		 return "/admin/noticeBoardWrite"; 
	} */
	
	//공지 넘버 생성하기
	@RequestMapping("/noticeBoardWritea")
	@ResponseBody
	public int getInfonum() { 
		int infonum = boardService.getInfonum();
		return infonum;
	}
/*	
	//공지 작성하기    
	  	@RequestMapping(value="/noticeBoardWriteOk", method=RequestMethod.POST)
	public ModelAndView noticeBoardWriteOk(AdminBoardVO vo, HttpServletRequest req, HttpSession session) { 
	 //	vo.setUserid(((Admin_MemberVO)session.getAttribute("logVo")).getUserid()); 
  	
		ModelAndView mav = new ModelAndView();
		if(boardService.boardInsertA(vo)>0) { //글 등록 성공
			mav.setViewName("redirect:noticeBoardList");
		}else {//글 등록 실패
			mav.setViewName("redirect:noticeBoardWrite");
		}
			return mav;
	}*/
	 
	//공지 수정하기
	@RequestMapping("/noticeBoardEdit")
	public String noticeBoardEdit(int no, Model model) { 
		//model.addAttribute("vo", boardService.boardUpdate(vo));
		return "/admin/noticeBoardEdit"; 
	}
	
	//공지 수정하기
	/*	@RequestMapping(value="/board/boardEditOk", method=RequestMethod.POST)
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
	}*/
	
	//공지 삭제하기
	 @RequestMapping("/noticeBoardDelA")
	public ModelAndView noticeBoardDel(int infonum) {  
		 ModelAndView mav = new ModelAndView();
		 
	  	if(boardService.boardDelA(infonum)>0){//삭제 성공시
			mav.setViewName("redirect:noticeBoardList");
		}else {//삭제 실패
			mav.addObject("infonum", infonum);
			mav.setViewName("redirect:noticeBoardEdit");
		}
		return mav;
	} 
	 
  //공지 여러개 삭제하기
	 @RequestMapping("/multiDel")
		public ModelAndView boardMultiDel(AdminBoardVO vo, HttpSession session) { 
		  	vo.setUserid((String)session.getAttribute("logId"));  
		 	for(int no:vo.getNoList()) {
				System.out.println("삭제 체크한 번호="+no);
			}
			ModelAndView mav = new ModelAndView(); 
			int result = boardService.boardMultiDelete(vo.getNoList());
			System.out.println("삭제된 레코드 수 ->"+result);
			mav.setViewName("redirect:list");
			return mav;
		}
	
}
	
	
	
  
	
	 