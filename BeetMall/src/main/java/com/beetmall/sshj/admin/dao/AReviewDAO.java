package com.beetmall.sshj.admin.dao;

import java.util.List;

import com.beetmall.sshj.admin.vo.ABoardVO;
import com.beetmall.sshj.admin.vo.AReviewVO; 
  
public interface AReviewDAO {
	public List<AReviewVO> reviewListA(String userid); //공지 글 목록 보기 
}
