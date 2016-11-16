package com.ht.action.stu;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.stu.LoginService;
import com.ht.vo.stu.Login;

public class LoginAction extends BaseAction{
	 LoginService login= (LoginService) getService("loginservice");
	 private Login lo;
	 private List list;
	public String add(){
		System.out.println(lo.getUname());
		login.addUname(lo);
	
		return "to_list";
	}
	public String list(){
		
		HttpServletRequest request=ServletActionContext.getRequest();
		String uname= request.getParameter("uname");
		String password=request.getParameter("password");
		Login l=login.listUname(uname, password);
		if(l==null ){
			request.setAttribute("lo", "’À∫≈ªÚ√‹¬Î¥ÌŒÛ");
			return "to_login";
		}
		this.setValToSession("lo", l);
		return "to_main";
	}
	
	
	
	
	
	public Login getLo() {
		return lo;
	}
	public void setLo(Login lo) {
		this.lo = lo;
	}
}
