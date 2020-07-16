package com.soso.app.admin.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soso.app.admin.service.AdminService;
import com.soso.app.admin.service.AdminVO;


@Controller // Bean �벑濡�, DispacherServlet�씠 �씤�떇�븷 �닔 �엳�뒗 Controller濡� 蹂��솚 => @Compnent
public class AdminController {

	@Autowired
	AdminService adminService;
    

	//admin사업자 등록폼
	@RequestMapping("adminInsertForm")
	public String adminInsertForm(AdminVO vo) {
		return "/admin/adminInsertForm";
	}

	//admin사업자 등록폼
	@RequestMapping("adminInsert")
	public String adminInsert(AdminVO vo, Model model,HttpSession session) {
		adminService.adminInsert(vo);
        session.setAttribute("storeId", vo.getStoreId());
        session.setAttribute("storePwd", vo.getStorePwd());
        session.setAttribute("storeName", vo.getStoreName());
        session.setAttribute("storeNum", vo.getStoreNum());
        session.setAttribute("storeAddr", vo.getStoreAddr());
        session.setAttribute("accountNum", vo.getAccountNum());
		return "redirect:/";
		
	}

	/*
	 * // 단건조회
	 * 
	 * @RequestMapping("getEmp/{employeeId}/{lastName}") public String
	 * getEmp(@PathVariable Integer employeeId, String lastName) {
	 * System.out.println(employeeId); System.out.println(lastName); return "home";
	 * }
	 */
	
	  // 목록조회
	  @RequestMapping("adminList") 
	  public String adminList(Model model) {
	  model.addAttribute("adminList", adminService.getAdminList(null)); 
	  return "admin/admin/adminInsert";
	  }
	 /* 
	 * // emp관리
	 * 
	 * @RequestMapping("empClient") public String empClient() { return
	 * "admin/emp/empClient"; }
	 * 
	 * // ajax목록
	 * 
	 * @RequestMapping("ajaxEmpList") public @ResponseBody List<EmpVO> ajaxEmpList()
	 * { return empMapper.empList(null); }
	 */

	// 수정폼

	// 수정처리

	// 삭제처리

}
