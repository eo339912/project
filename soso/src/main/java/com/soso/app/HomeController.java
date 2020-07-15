package com.soso.app;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soso.app.menu.service.MenuService;
import com.soso.app.menu.service.MenuVO;

@Controller
public class HomeController {
	
	@Autowired
	MenuService menuServce;
	
	@RequestMapping("/")
	public String home(MenuVO menuVO) {
		menuServce.getMenuList(menuVO);
		return "home";
	}
	
	
	
}
