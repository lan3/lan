package com.ht.serviceImpl.stu;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.stu.StunumService;
import com.ht.vo.stu.Stunum;

public class StunumServiceImpl extends Hibrenate_Dao implements StunumService{

	
	public boolean addnum(Stunum num) {
		// TODO Auto-generated method stub
		return addObj(num);
	}

	
	public List numlist() {
		// TODO Auto-generated method stub
		return list("from Stunum");
	}

	
	public Stunum Byid(int stuno) {
		Stunum stu= (Stunum) getObj(Stunum.class, stuno);
		return stu;
	}

	
	public boolean update(Stunum num) {
		// TODO Auto-generated method stub
		return updateObj(num);
	}

	
	public boolean delnum(Stunum num) {
		// TODO Auto-generated method stub
		return deleteObj(num);
	}

	
	public List numlist(int currpage, int pagecount) {
		
		return pagelist("from Stunum", currpage, pagecount);
	}

	
	public List Byclass(String classid) {
		// TODO Auto-generated method stub
		return listbysql("select distinct * from (select  c.* from 　student s , stunum c   where c.classid='"+classid+"' and s.classid=c.classid)");
	}

	public List stuclass(String classid) {
		// TODO Auto-generated method stub
		return listbysql("select * from student where classid='"+classid+"'");
	}


	//根据班级和学生姓名查找
	public List likestu(String uname) {
		// TODO Auto-generated method stub
		return listbysql("select * from stunum  where classid like '%"+uname+"%' or sid like '%"+uname+"%'");
	}

}
