package com.soso.app.menu.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.soso.app.menu.mapper.MenuMapper;
import com.soso.app.menu.service.MenuService;
import com.soso.app.menu.service.MenuVO;

@Service
public class MenuServiceImpl implements MenuService{
	
	@Autowired MenuMapper menuMapper;
	
	@Override
	public List<MenuVO> getMenuList(MenuVO menuVO) {
		return menuMapper.getMenuList(menuVO);
	}
	
	@Override
	public List<MenuVO> getMenuCategory(MenuVO menuVO) {
		return menuMapper.getMenuCategory(menuVO);
	}

}
