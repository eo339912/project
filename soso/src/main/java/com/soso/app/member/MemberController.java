package com.soso.app.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.soso.app.mapper.MemberMapper;


@Controller // Bean �벑濡�, DispacherServlet�씠 �씤�떇�븷 �닔 �엳�뒗 Controller濡� 蹂��솚 => @Compnent
public class MemberController {

	@Autowired
	MemberMapper memberMapper;
    
	//로그인
	@RequestMapping("memberLogin")
	public String memberLogin(MemberVO vo) {
		
		return "메인페이지로";
	}
	
	
	
	// 가입
	@RequestMapping("memberInsertForm")
	public String memberInsertForm(MemberVO vo) {
		return "loginSignUp/member/memberInsertForm";
	}

	// 등록처리
	@RequestMapping("memberInsert")
	public String memberInsert(MemberVO vo, Model model) {
		memberMapper.memberInsert(vo);
		//서비스 호출
		
		return "redirect:adminList";
		
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
	  @RequestMapping("memberList") 
	  public String memberList(Model model) {
	  model.addAttribute("memberList", memberMapper.getMemberList(null)); 
	  return "loginSignUp/member/memberInsert";
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
