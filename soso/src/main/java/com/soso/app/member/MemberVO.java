package com.soso.app.member;

import lombok.Data;   
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MemberVO {
	String memberNum;
	String phone;
	String pwd;
	String email;
	String delAddr;
}
