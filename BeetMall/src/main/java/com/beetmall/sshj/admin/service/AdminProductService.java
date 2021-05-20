 package com.beetmall.sshj.admin.service;

import java.util.List;

import com.beetmall.sshj.admin.vo.AdminProductVO;
import com.beetmall.sshj.admin.vo.AdminkPageSearchVO; 

public interface AdminProductService {

	public List<AdminProductVO> productList(AdminkPageSearchVO pageVO);

	public int productOnetotalRecord(AdminkPageSearchVO pageVO);

}