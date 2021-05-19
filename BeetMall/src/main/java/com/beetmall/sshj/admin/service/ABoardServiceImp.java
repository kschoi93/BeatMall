package com.beetmall.sshj.admin.service;

import java.util.List;

import javax.inject.Inject;
 
import org.springframework.stereotype.Service;

import com.beetmall.sshj.admin.dao.ABoardDAO; 
import com.beetmall.sshj.admin.vo.ABoardVO;
import com.beetmall.sshj.custom.vo.CenterVO;
import com.beetmall.sshj.custom.vo.PageSearchVO; 
 
@Service
public class ABoardServiceImp implements ABoardService {
	
	@Inject
	ABoardDAO boardDAO;

	@Override
	public List<ABoardVO> noticeList(PageSearchVO pageVO) { 
		return boardDAO.noticeList(pageVO);
	}
	@Override
	public List<ABoardVO> noticeAllRecord(PageSearchVO pageVO) {
		return boardDAO.noticeAllRecord(pageVO);
		}
	@Override
	public int getInfonum() { 
		return boardDAO.getInfonum();
	}

	@Override
	public int boardInsertA(ABoardVO vo) { 
		return boardDAO.boardInsertA(vo);
	} 
	@Override
	public int boardUpdate(ABoardVO vo) { 
		return boardDAO.boardUpdateA(vo);
	}

	@Override
	public int boardDel(int infonum, String userid) { 
		return boardDAO.boardDelA(infonum);
	}
	  
	 
	  
}
