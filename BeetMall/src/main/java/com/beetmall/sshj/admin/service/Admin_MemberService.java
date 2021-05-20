package com.beetmall.sshj.admin.service;

import java.util.List;

import com.beetmall.sshj.admin.vo.Admin_MemberVO;
import com.beetmall.sshj.admin.vo.Admin_Member_PageVO;

public interface Admin_MemberService {
	public int memberCountall(int usertype);	// 모든 회원 정보(탈퇴 제외)
	public List<Admin_MemberVO> memberselectall(Admin_Member_PageVO pageVO);
	public int memberCount(int usertype, int seltype); // 특정조건 회원 정보(탈퇴, 구매, 판매 등으로 나누는 것)
	public List<Admin_MemberVO> memberselect(Admin_Member_PageVO pageVO);
	public int memberCountBlack(int usertype, int seltype);	// 블랙회원 정보
	public List<Admin_MemberVO> memberselectblack(Admin_Member_PageVO pageVO);
	public int memberCountSeller(int usertype, int seltype);	// 판매자 정보
	public List<Admin_MemberVO> memberselectSeller(Admin_Member_PageVO pageVO);
	// 회원정보 부분
	public Admin_MemberVO memberinfoSelect(String userid);
	public List<Admin_MemberVO> orderinfoSelect(String userid);
	public Admin_MemberVO reportinfoSelect(String userid);
	public int orderstatusSelect(String userid, String status);
	
}