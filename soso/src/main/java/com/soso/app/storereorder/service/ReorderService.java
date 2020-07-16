package com.soso.app.storereorder.service;

import java.util.List;

import com.soso.app.storereorder.service.ReorderVO;

public interface ReorderService {


	public List<ReorderVO> getmailList(ReorderVO reorderVO);
	public void mailInsert(ReorderVO reorderVO);
	/* public String getName(Integer id); */
	/* public List<Map<String, Object>> getEmpMap(); */
}
