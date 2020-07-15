package com.soso.app;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soso.app.menu.service.MenuVO;


@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	
	
}
