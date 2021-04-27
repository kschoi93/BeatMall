package com.beetmall.sshj.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.beetmall.sshj.dao.AdminBoardDAO;
import com.beetmall.sshj.vo.AdminBoardVO;
 @Service
public class AdminBoardServiceImp implements AdminBoardService {
	
	@Inject
	AdminBoardDAO boardDAO;
	 
	@Override
	public List<AdminBoardVO> boardAllRecord() { 
		return boardDAO.boardAllRecord();
	}
	 
	@Override//글쓰기 
	public int boardInsert(AdminBoardVO vo) {
		return boardDAO.boardInsert(vo);
	}

	@Override
	public AdminBoardVO boardSelect(int no) { 
		return boardDAO.boardSelect(no);
	} 

	@Override
	public int boardUpdate(AdminBoardVO vo) { 
		return boardDAO.boardUpdate(vo);
	} 

	 
}
