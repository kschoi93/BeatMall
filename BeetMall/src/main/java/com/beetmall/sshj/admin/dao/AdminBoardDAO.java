package com.beetmall.sshj.admin.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;

import com.beetmall.sshj.admin.vo.AdminBoardVO;
import com.beetmall.sshj.admin.vo.Admin_Board_PageVO; 
  
public interface AdminBoardDAO {
	public List<AdminBoardVO> noticeBoardList(Admin_Board_PageVO pageVO); //공지 글 목록 보기
	//public int noticeAllRecord(Admin_Board_PageVO pageVO); 
	public int getInfonum(); //공지 번호 불러오기
	public int boardInsertA(AdminBoardVO vo); //새 공지 쓰기  
	public int boardUpdateA(AdminBoardVO vo);//공지 수정
	public int boardDelA(int infonum); //공지 삭제
	//여러 개의 레코드 한번에 삭제
		@Delete({"<script>",
				 	" delete from board where no in",
				 	" <foreach item=\"item\" collection=\"array\" open=\"(\" separator=\",\" close=\")\">",
				 		" #{item}",
				 	" </foreach>",
				 " </script>"})
		public int boardMultiDelete(int[] noList);
}
