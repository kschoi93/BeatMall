 package com.beetmall.sshj.admin.dao;

import java.util.List;

import com.beetmall.sshj.admin.vo.AdminProductVO;
import com.beetmall.sshj.admin.vo.AdminkPageSearchVO;  

public interface AdminProductDAO {

	public List<AdminProductVO> productList(AdminkPageSearchVO pageVO);

	public int productOnetotalRecord(AdminkPageSearchVO pageVO);

}