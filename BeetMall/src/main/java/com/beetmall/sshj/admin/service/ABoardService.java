package com.beetmall.sshj.admin.service;

import java.util.List;

import com.beetmall.sshj.admin.vo.ABoardVO;
import com.beetmall.sshj.custom.vo.PageSearchVO;
 

public interface ABoardService {

	public List<ABoardVO> noticeList(PageSearchVO pageVO); 
	public List<ABoardVO> noticeAllRecord(PageSearchVO pageVO);
	public int getInfonum();
	public int boardInsertA(ABoardVO vo); 
	public int boardUpdate(ABoardVO vo);
	public int boardDel(int infonum, String userid);
}
