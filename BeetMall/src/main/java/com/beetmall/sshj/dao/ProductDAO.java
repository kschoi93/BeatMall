package com.beetmall.sshj.dao;

import java.util.List;

import com.beetmall.sshj.vo.ProductVO;


public interface ProductDAO {

	//판매자 판매상품 목록 전체 보기
	 public List<ProductVO> productAllSelect(String userid); 
	 
	//상품 등록하기
	public int productInsert(ProductVO vo);

}
