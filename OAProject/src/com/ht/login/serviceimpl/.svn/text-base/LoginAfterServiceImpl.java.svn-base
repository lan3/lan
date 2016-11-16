package com.ht.login.serviceimpl;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.login.service.LoginAfterService;
import com.ht.vo.emp.Emp;
import com.ht.vo.stu.Student;

public class LoginAfterServiceImpl extends  Hibrenate_Dao   implements   LoginAfterService{

	public List updemppwd(int id,String pwd) {
		
	
		return   listbysql("update emp  set  epwd='"+pwd+ "' where  eid="+id);
	}

	public List updestupwd(int id,String pwd) {
		
		return listbysql("update student  set  spwd='"+pwd+ "' where  sid="+id);
	}

	public Emp getemp(int id) {
		// TODO Auto-generated method stub
		return  (Emp)getObj(Emp.class, id);
	}

	public boolean updpwd(Emp emp) {
		// TODO Auto-generated method stub
		return updateObj(emp);
	}

	public Student getstu(int id) {
		
		return (Student)getObj(Student.class, id);
	}

	public boolean updpwd(Student stu) {
		
		return updateObj(stu);
	}

	
	
//	//查找老师名称
//	public List selemppwd(int  id){
//		return  listbysql("select epwd  from emp where eid="+id);
//	}
//	public List selestupwd(int id) {
//		return  listbysql("select  spwd  from student where sid="+id);
//	}
	
}
