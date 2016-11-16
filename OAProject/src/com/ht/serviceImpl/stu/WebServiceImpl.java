package com.ht.serviceImpl.stu;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.stu.WebService;
import com.ht.vo.stu.Scoreweb;
import com.ht.vo.stu.Stuscore;

public class WebServiceImpl extends Hibrenate_Dao implements WebService{

	public boolean addweb(Scoreweb web) {
		// TODO Auto-generated method stub
		return addObj(web);
	}

	public List weblist() {
		// TODO Auto-generated method stub
		return listbysql("select * from scoreweb where wid=(select max(wid) from scoreweb)");
	}
	//根据班级查找学生
	public List Bystu(String classid) {
		return listbysql("select * from student where classid='"+classid+"'");
	}
	//添加学生分数
	public boolean addstucore(Stuscore stu) {
		// TODO Auto-generated method stub
		return addObj(stu);
	}
	//查询子表数据
	public List Byliststu() {
		// TODO Auto-generated method stub
		return list("from Stuscore");
	}

	//
	public Stuscore Byid(int stuid) {
			Stuscore stu= (Stuscore) getObj(Stuscore.class, stuid);
		return stu;
	}

	//删除
	public boolean delstucore(Stuscore stu) {
		
		return deleteObj(stu);
	}


	public List stuweb(String uname) {
		
		return listbysql("select * from stuscore where sid like '%"+uname+"%'");
	}

	public List webBylist(int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelist("from Stuscore", currpage, pagecount);
	}
	
}
