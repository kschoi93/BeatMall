 package com.beetmall.sshj.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.beetmall.sshj.admin.dao.AdminProductDAO; 
import com.beetmall.sshj.admin.vo.AdminProductVO;
import com.beetmall.sshj.admin.vo.AdminkPageSearchVO; 

@Service
public class AdminProductServiceImp implements AdminProductService {
	
	@Inject
	AdminProductDAO productDAO;

	@Override
	public List<AdminProductVO> productList(AdminkPageSearchVO pageVO) {
		return productDAO.productList(pageVO);
	}

	@Override
	public int productOnetotalRecord(AdminkPageSearchVO pageVO) {
		return productDAO.productOnetotalRecord(pageVO);
	}
	
}