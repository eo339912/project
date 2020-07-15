package com.soso.app;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dbal.app.emp.EmpVO;
import com.soso.app.menu.service.MenuService;
import com.soso.app.menu.service.MenuVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	MenuService menuServce;
	
	@RequestMapping("/")
	public String home(Model model, MenuVO menu) {
		return "home";
	}
	
	
	//목록조회
	@RequestMapping("empList")
	public String empList(Model model, EmpVO empVO) {
		model.addAttribute("empList", empService.getEmpList(empVO));
		System.out.println("empList서비스 호출");
		return "emp/empList";
	}
	
}
