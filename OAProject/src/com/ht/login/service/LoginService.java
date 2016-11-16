package com.ht.login.service;

import java.util.List;

import com.ht.common.Hibernate_Util;
import com.ht.vo.emp.Emp;
import com.ht.vo.stu.Student;

public interface LoginService {

	
	public List  getstuByid(String name ,String pwd);
	public List  getstuByid2(String name ,String pwd);
	public List  getempByid(String name ,String pwd);
	public List  getempByid2(String name ,String pwd);
//	public Emp 	selEid(String name ,String pwd); 
//	public Student  selstid(String name ,String pwd);
}
