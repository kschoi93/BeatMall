package com.beetmall.admin.dao;

import java.util.List;

import com.beetmall.admin.vo.BoardVO;

public interface BoardDAO {
	public List<BoardVO> boardAllRecord(); //글 목록 보기
	public int boardInsert(BoardVO vo); //글쓰기 
	public BoardVO boardSelect(int no);//글 내용보기 
	public int boardUpdate(BoardVO vo);//글 수정
}
