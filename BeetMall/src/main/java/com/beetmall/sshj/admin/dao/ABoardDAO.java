package com.beetmall.sshj.admin.dao;

import java.util.List;

import com.beetmall.sshj.admin.vo.ABoardVO;
import com.beetmall.sshj.custom.vo.PageSearchVO; 
  
public interface ABoardDAO {
	public List<ABoardVO> noticeList(PageSearchVO pageVO); //공지 글 목록 보기
	public List<ABoardVO> noticeAllRecord(PageSearchVO pageVO); 
	public int getInfonum(); //공지 번호 불러오기
	public int boardInsertA(ABoardVO vo); //새 공지 쓰기  
	public int boardUpdateA(ABoardVO vo);//공지 수정
	public int boardDelA(int infonum); //공지 삭제
}
