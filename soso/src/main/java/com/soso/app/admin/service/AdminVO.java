package com.soso.app.admin.service;

import com.dbal.app.emp.EmpVO;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AdminVO {
	String storeId;
	String storePwd;
	String storeNum;
	String storeAddr;
	String storeName;
	String accountNum;
}
