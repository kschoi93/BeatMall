package com.beetmall.sshj.admin.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.beetmall.sshj.admin.dao.AMemberDAO;
import com.beetmall.sshj.admin.vo.AMemberVO; 

@Service
public class AMemberServiceImp implements AMemberService{
	@Inject
	AMemberDAO aMemberDAO;

	@Override
	public AMemberVO loginCheck(AMemberVO vo) { 
		return null;
	}
	
	 
}
