package com.beetmall.sshj.admin.dao;

import java.util.List;

import com.beetmall.sshj.admin.vo.BoardVO;
  
public interface BoardDAO {
	public List<BoardVO> noticeList(); //공지 글 목록 보기
	public int getInfonum(); //공지 번호 불러오기
	public int boardInsert(BoardVO vo); //새 공지 쓰기 
	public BoardVO boardSelect(int no);//공지 내용 보기 
	public int boardUpdate(BoardVO vo);//공지 수정
	public int boardDel(int no); //공지 삭제
}
