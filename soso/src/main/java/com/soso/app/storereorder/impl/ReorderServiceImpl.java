package com.soso.app.storereorder.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soso.app.member.service.MemberVO;
import com.soso.app.storereorder.mapper.ReorderMapper;
import com.soso.app.storereorder.service.ReorderService;
import com.soso.app.storereorder.service.ReorderVO;

@Service
public class ReorderServiceImpl implements ReorderService{

	@Autowired ReorderMapper reorderMapper; 



	@Override
	public List<ReorderVO> getmailList(ReorderVO reorderVO) {
		return null;
	}
	@Override
	public void mailInsert(ReorderVO reorderVO) {
		// TODO Auto-generated method stub
		
	}
}

