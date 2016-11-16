package com.ht.serviceImpl.stu;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.stu.ClassService;
import com.ht.vo.stu.Classes;
import com.ht.vo.stu.Hourse;

public class ClassServiceImpl extends Hibrenate_Dao implements ClassService{


	public boolean addClass(Classes c) {
		// TODO Auto-generated method stub
		return addObj(c);
	}


	public List queryClass() {
		// TODO Auto-generated method stub
		return list("from Classes");
	}


	public Classes Byid(int classid) {
		Classes cl= (Classes) getObj(Classes.class, classid);
		return cl;
	}


	public boolean delclass(Classes c) {
		// TODO Auto-generated method stub
		return deleteObj(c);
	}


	public boolean update(Classes c) {
		// TODO Auto-generated method stub
		return updateObj(c);
	}

	public List currfy(int currpage, int pagecount) {
		
		return pagelist("from Classes", currpage, pagecount);
	}

	
	public List listemp() {
		// TODO Auto-generated method stub
		return listbysql("select * from emp where  ejob='任课老师' or ejob='班主任' or ejob='辅导老师'");
	}

}
