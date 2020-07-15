package com.soso.app.member.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.soso.app.member.service.MemberService;
import com.soso.app.member.service.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	//member단건조회
	@Override
	public MemberVO getMember(MemberVO memberVO) {
		return null;
	}

	//member전체조회
	@Override
	public List<MemberVO> getMemberList(MemberVO memberVO) {
		return null;
	}
	
	//admin등록폼
	@Override
	public void memberInsert(MemberVO memberVO) {
		// TODO Auto-generated method stub
		
	}

}
