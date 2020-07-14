 package com.soso.app.mapper;

import java.util.List;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.soso.app.admin.AdminVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:/config/*-context.xml")
public interface AdminMapper {

	public AdminVO getAdmin(AdminVO adminVO);
	
	public List<AdminVO> getAdminList(AdminVO adminVO);

	public void adminInsert(AdminVO adminVO);

	/* public String getName(Integer id); */
	
	/* public List<Map<String, Object>> getEmpMap(); */
}
