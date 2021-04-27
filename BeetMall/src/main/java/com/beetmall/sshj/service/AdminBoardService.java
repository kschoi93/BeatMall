package com.beetmall.sshj.service;

import java.util.List;

import com.beetmall.sshj.vo.AdminBoardVO;

public interface AdminBoardService {

	public List<AdminBoardVO> boardAllRecord();

	public int boardInsert(AdminBoardVO vo);
	public AdminBoardVO boardSelect(int no); 
	public int boardUpdate(AdminBoardVO vo);
	
}
