package com.beetmall.sshj.admin.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
 
import com.beetmall.sshj.admin.service.AReviewService; 
import com.beetmall.sshj.admin.vo.AReviewVO;
import com.beetmall.sshj.seller.vo.SellerReviewVO; 
 

@Controller
public class Admin_reviewController { 
	@Inject
	AReviewService reviewService; 
	
	///////////////////////리뷰 관리///////////////////////////////////
	//리뷰 목록보기
	@RequestMapping("/reviewListA")
	public ModelAndView reviewListA(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		AReviewVO vo = new AReviewVO();
		String userid = (String)session.getAttribute("logId");
		if(userid != null) {
			List<AReviewVO> list = reviewService.reviewListA(userid); 
			if(list.size()==0) {
				mav.setViewName("/admin/reviewListA"); 
			}  
			mav.addObject("rlist", reviewService.reviewListA(userid));
			mav.setViewName("/admin/reviewListA");
		}else {
			mav.setViewName("/adminHome"); 
		}
		return mav;
	}
}
	
	
  
	
	 