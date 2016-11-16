package com.ht.serviceImpl.stu;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.stu.LoginService;
import com.ht.vo.stu.Login;

public class LoginServiceImpl extends Hibrenate_Dao implements LoginService{


	public boolean addUname(Login l) {
		// TODO Auto-generated method stub
		return addObj(l);
	}


	public Login listUname(String uname, String password) {
		// TODO Auto-generated method stub
		Login l= (Login) listbysql("select * from login where uname='"+uname+"' and password='"+password+"'");
		System.out.println(l);
		return l;
	}


}