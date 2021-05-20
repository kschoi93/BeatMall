package com.beetmall.sshj.admin.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.beetmall.sshj.admin.vo.Admin_Board_PageVO;
import com.beetmall.sshj.admin.vo.Admin_MemberVO;
import com.beetmall.sshj.admin.vo.Admin_Member_PageVO;
import com.beetmall.sshj.admin.vo.AdminBoardVO;
import com.beetmall.sshj.custom.vo.PageSearchVO;
 

public interface Admin_BoardService {

	public List<AdminBoardVO> noticeBoardList(Admin_Board_PageVO pageVO); 
	//public int noticeAllRecord(Admin_Board_PageVO pageVO);
	
	
	public int boardDelA(int infonum);
	public int boardMultiDelete(int[] noList);
	
	//////////////////
	public int getInfonum();
	public int boardInsertA(AdminBoardVO vo); 
	public int boardUpdate(AdminBoardVO vo);
	

	 
	
}
