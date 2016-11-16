package com.ht.login.Action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.ejb.SessionContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;



import com.ht.action.BaseAction;
import com.ht.login.service.LoginService;
import com.ht.vo.emp.Emp;
import com.ht.vo.stu.Student;
import com.opensymphony.xwork2.ActionContext;


public class LoginAction extends BaseAction{
	private	 Emp  emp;//老师
	private Student  stu;


	private  List  list;
	HttpServletRequest request= ServletActionContext.getRequest();
	LoginService ls=(LoginService)getService("loginService");

	private Map<String, Object> Session;

	//查询老师
//	public String  checkemp() {
//		System.out.println("checkemp() ");
//		Map user = ActionContext.getContext().getSession();
//		String  esname=request.getParameter("name");
//		String  epwd=request.getParameter("pwd");
//
//		try {
//			esname=new String(esname.getBytes("iso-8859-1"),"utf-8");
//			epwd=new String(epwd.getBytes("iso-8859-1"),"utf-8");
//		} catch (UnsupportedEncodingException e) {
//
//			e.printStackTrace();
//		}
//		System.out.println("老师用户名是"+esname+"    密码是"+epwd);
//		list=ls.checkemp(esname, epwd);
//		if(list.size()>0){//登录成功的用户信息保存在session中 
//			//找id
//			for (int i = 0; i < list.size(); i++) {
//				Map m=(Map)list.get(0);
//				
//				user.put("id", m);
//			}	
//			user.put("name", esname);  
//			user.put("pwd",epwd);
//			HttpSession session=request.getSession();
//			return  "succeed";
//		}else{ 
//			request.setAttribute("name", esname);
//			request.setAttribute("stutas", "用户登入失败");
//			return "erro";
//		}
//
//	}
	public String  checkemp(){
			String username=request.getParameter("name");
			String userpwd=request.getParameter("pwd");
			
			try {
				username=new String(username.getBytes("iso-8859-1"),"utf-8");
				userpwd=new String(userpwd.getBytes("iso-8859-1"),"utf-8");
				ServletActionContext.getRequest().getSession().setAttribute("userpwd", userpwd);
				System.out.println(userpwd);
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			
		list=ls.getempByid2(username, userpwd);
		if(list.size()>0){ //登录成功的用户信息保存在session中 
			for (int i = 0; i < list.size(); i++) {
				Map m=(Map)list.get(0);
				System.out.println("id:"+m.get("EID"));
				System.out.println("name:"+m.get("ENAME"));
				ServletActionContext.getRequest().getSession().setAttribute("id", m.get("EID"));
				ServletActionContext.getRequest().getSession().setAttribute("name", m.get("ENAME"));
				List li= selmid(Integer.parseInt(m.get("EID")+""));	
				List list=new ArrayList();
				for (int j = 0; j < li.size(); j++) {
					Map m2=(Map) li.get(j);
					list.add((String)m2.get("MID"));
				}
				ServletActionContext.getRequest().getSession().setAttribute("limits",list); 
				return  "succeed";
			}
		}else{ 
			System.out.println("111111");
			request.setAttribute("uname", username);
			request.setAttribute("stutas", "用户登入失败");
			return "erro";
		}
		return  null;
	}
		
	//查询学生
	public String  checkstu() {
		String username=request.getParameter("name");
		String userpwd=request.getParameter("pwd");
		try {
			username=new String(username.getBytes("iso-8859-1"),"utf-8");
			userpwd=new String(userpwd.getBytes("iso-8859-1"),"utf-8");
			ServletActionContext.getRequest().getSession().setAttribute("userpwd", userpwd);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		list=ls.getstuByid2(username, userpwd);
		if(list.size()>0){ //登录成功的用户信息保存在session中 
		for (int i = 0; i < list.size(); i++) {
			Map m=(Map)list.get(0);
			System.out.println("name:"+m.get("SNAME"));
			ServletActionContext.getRequest().getSession().setAttribute("id", m.get("SID"));
			ServletActionContext.getRequest().getSession().setAttribute("name", m.get("SNAME"));
			return  "student";
		}
	}else{ 
		System.out.println("222222");
		request.setAttribute("stutas", "用户登入失败");
		request.setAttribute("uname", username);
		
		return "erro";
	}
	return  null;
	
	}
	
	
	public void setSession(Map<String, Object> emp) {
		this.Session = emp;
	}

	public Emp getEmp() {
		return emp;
	}

	public void setEmp(Emp emp) {
		this.emp = emp;
	}




	public HttpServletRequest getRequest() {
		return request;
	}


	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}


	public LoginService getLs() {
		return ls;
	}


	public void setLs(LoginService ls) {
		this.ls = ls;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public Map<String, Object> getSession() {
		return Session;
	}

}
