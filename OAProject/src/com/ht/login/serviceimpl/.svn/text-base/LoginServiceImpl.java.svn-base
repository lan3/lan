package com.ht.login.serviceimpl;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.login.service.LoginService;
import com.ht.vo.emp.Emp;
import com.ht.vo.stu.Student;

public class LoginServiceImpl   extends  Hibrenate_Dao  implements  LoginService{
	
	public List getstuByid(String name, String pwd) {
		  List  list=listbysql("select  sid  from student  where  ssname ='"+name+"'"+"  and  spwd= '"+pwd+"'");
		  return  list;
	}

	public List getempByid(String name, String pwd) {
		List  list= listbysql("select  eid  from emp  where  certid ='"+name+"'"+"  and  epwd= '"+pwd+"'");
		return  list;
	}

	public List getempByid2(String name, String pwd) {
		List   list= listbysql("select  eid,ename  from emp  where  eename ='"+name+"'"+"  and  epwd= '"+pwd+"'");
		return  list;
	}
	
	public List getstuByid2(String name, String pwd) {
		
		List  list=listbysql("select   sid,sname  from student  where  ssname ='"+name+"'"+"  and  spwd= '"+pwd+"'");
		 return  list;
	}
	
	
//	public Emp selEid(String name, String pwd) {
//		List list = listbysql("select  *  from emp  where  certid ='"+name+"'"+"  and  epwd= '"+pwd+"'");
//		if(list == null || list.isEmpty()){
//			return null;
//		}
//		else{
//			return (Emp)list.get(0);
//		}
//	}


}
