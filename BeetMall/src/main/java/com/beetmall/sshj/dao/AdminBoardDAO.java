package com.beetmall.sshj.dao;

import java.util.List;

import com.beetmall.sshj.vo.AdminBoardVO;

public interface AdminBoardDAO {
	public List<AdminBoardVO> boardAllRecord(); //글 목록 보기
	public int boardInsert(AdminBoardVO vo); //글쓰기 
	public AdminBoardVO boardSelect(int no);//글 내용보기 
	public int boardUpdate(AdminBoardVO vo);//글 수정
}
