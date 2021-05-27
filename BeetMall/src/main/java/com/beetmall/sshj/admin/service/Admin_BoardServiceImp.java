package com.beetmall.sshj.admin.service;
 
import java.util.List; 

import javax.inject.Inject; 

import org.springframework.stereotype.Service;        

import com.beetmall.sshj.admin.dao.AdminBoardDAO; 
import com.beetmall.sshj.admin.vo.AdminBoardVO;
import com.beetmall.sshj.admin.vo.Admin_Board_PageVO; 
 
@Service
public class Admin_BoardServiceImp implements Admin_BoardService {
	
	@Inject
	AdminBoardDAO boardDAO;

	@Override
	public List<AdminBoardVO> noticeBoardList(Admin_Board_PageVO pageVO) { 
		return boardDAO.noticeBoardList(pageVO);
	}
 
	@Override
	public int noticeWriteOk(AdminBoardVO vo) { 
		return boardDAO.noticeWriteOk(vo);
	}

	@Override
	public AdminBoardVO noticeBoardView(int infonum) { 
		return boardDAO.noticeBoardView(infonum);
	}

	@Override
	public int noticeBoardDelete(int infonum) { 
		return boardDAO.noticeBoardDelete(infonum);
	}
 
 
	@Override
	public int noticeBoardEditOk(AdminBoardVO vo) { 
		return boardDAO.noticeBoardEditOk(vo);
	}

	@Override
	public int noticeOnetotalRecord(Admin_Board_PageVO pageVO) { 
		return boardDAO.noticeOnetotalRecord(pageVO);
	}
}
