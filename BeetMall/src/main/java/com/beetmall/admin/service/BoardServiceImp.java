package com.beetmall.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.beetmall.admin.dao.BoardDAO;
import com.beetmall.admin.vo.BoardVO;
 @Service
public class BoardServiceImp implements BoardService {
	
	@Inject
	BoardDAO boardDAO;
	 
	@Override
	public List<BoardVO> boardAllRecord() { 
		return boardDAO.boardAllRecord();
	}
	 
	@Override//글쓰기 
	public int boardInsert(BoardVO vo) {
		return boardDAO.boardInsert(vo);
	}

	@Override
	public BoardVO boardSelect(int no) { 
		return boardDAO.boardSelect(no);
	} 

	@Override
	public int boardUpdate(BoardVO vo) { 
		return boardDAO.boardUpdate(vo);
	} 

	 
}
