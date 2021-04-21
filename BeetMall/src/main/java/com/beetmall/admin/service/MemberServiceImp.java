package com.beetmall.admin.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.beetmall.admin.dao.MemberDAO;
import com.beetmall.admin.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService{
	@Inject
	MemberDAO memberDAO;
	
	@Override
	public MemberVO loginCheck(MemberVO vo) { 
		return memberDAO.loginCheck(vo);
	} 
	
}
