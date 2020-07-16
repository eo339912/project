package com.soso.app.storereorder.mapper;

import java.util.List;

import com.soso.app.member.service.MemberVO;
import com.soso.app.menu.service.MenuVO;
import com.soso.app.storereorder.service.ReorderVO;

public interface ReorderMapper {
	public List<MenuVO> getmailList(ReorderVO reorderVO);	
	public void mailInsert(ReorderVO reorderVO);
}
