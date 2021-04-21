package com.beetmall.admin.service;

import java.util.List;

import com.beetmall.admin.vo.BoardVO;

public interface BoardService {

	public List<BoardVO> boardAllRecord();

	public int boardInsert(BoardVO vo);
	public BoardVO boardSelect(int no); 
	public int boardUpdate(BoardVO vo);
	
}
