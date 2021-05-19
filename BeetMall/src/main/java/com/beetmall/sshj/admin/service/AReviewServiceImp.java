package com.beetmall.sshj.admin.service;

import java.util.List;

import javax.inject.Inject;
 
import org.springframework.stereotype.Service;

import com.beetmall.sshj.admin.dao.AReviewDAO;
import com.beetmall.sshj.admin.vo.AReviewVO; 
 
@Service
public class AReviewServiceImp implements AReviewService {
	
	@Inject
	AReviewDAO dao;

	@Override
	public List<AReviewVO> reviewListA(String userid) { 
		return dao.reviewListA(userid);
	}

 
	  
	 
	  
}
