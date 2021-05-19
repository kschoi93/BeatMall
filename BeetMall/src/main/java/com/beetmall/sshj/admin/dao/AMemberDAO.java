package com.beetmall.sshj.admin.dao;

import com.beetmall.sshj.admin.vo.AMemberVO;

public interface AMemberDAO {
	//로그인
	public AMemberVO loginCheck(AMemberVO vo);
	
}
