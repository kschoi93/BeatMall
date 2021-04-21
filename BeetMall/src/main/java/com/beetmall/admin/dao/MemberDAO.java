package com.beetmall.admin.dao;

import com.beetmall.admin.vo.MemberVO;

public interface MemberDAO {
	//로그인
	public MemberVO loginCheck(MemberVO vo);
	
}
