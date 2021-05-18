package com.beetmall.sshj.admin.service;

import java.util.List;

import javax.inject.Inject;
 
import org.springframework.stereotype.Service;

import com.beetmall.sshj.admin.dao.BoardDAO;
import com.beetmall.sshj.admin.vo.BoardVO;
 
@Service
public class BoardServiceImp implements BoardService {
	
	@Inject
	BoardDAO boardDAO;
	  
	@Override
	public List<BoardVO> noticeList() { 
		return boardDAO.noticeList();
	}
	//공지 번호 불러오기
	@Override
	public int getInfonum() {
		return boardDAO.getInfonum();
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

	@Override
	public int boardDel(int no) { 
		return boardDAO.boardDel(no);
	}

	 
}
