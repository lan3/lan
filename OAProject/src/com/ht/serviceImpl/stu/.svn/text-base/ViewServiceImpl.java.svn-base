package com.ht.serviceImpl.stu;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.stu.ViewSerivce;
import com.ht.vo.stu.Views;
import com.ht.vo.stu.Viewstu;

public class ViewServiceImpl extends Hibrenate_Dao implements ViewSerivce{

	//学生添加反馈
	public boolean addview(Views vs) {
		// TODO Auto-generated method stub
		return addObj(vs);
	}

	//查询学生反馈
	public List viewList() {
		// TODO Auto-generated method stub
		return listbysql("select * from Views");
	}

	//分页
	public List fenye(int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelistbysql("select * from Views", (currpage-1)*pagecount, pagecount);
	}
	//获取id
	public Views Byid(int vid) {
		Views v= (Views) getObj(Views.class, vid);
		return v;
	}

	//查询该学生提交的反馈
	public List viewstu(String uname) {
		// TODO Auto-generated method stub
		return listbysql("select * from Views where sid='"+uname+"'");
	}

	//分页
	public List viewstu(String uname, int currpage, int pagecount) {
		
		return pagelistbysql("select * from Views where sid='"+uname+"'", (currpage-1)*pagecount, pagecount);
	}

	//查询回复消息
	public List viewstucont(String uname,int currpage,int pagecount) {
		// TODO Auto-generated method stub
		return pagelistbysql("select * from viewstu s,viewteach t where s.sid=t.sid and t.sid='"+uname+"'", (currpage-1)*pagecount, pagecount);
	}

	//回复消息
	public boolean addviews(Viewstu stu) {
		
		return addObj(stu);
	}
	//查询学生回复消息
	public List contview(String uname) {
		// TODO Auto-generated method stub
		return listbysql("select * from viewstu s where s.sid='"+uname+"' order by s.stime desc");
	}

	//查询老师回复消息
	public List teachcont(String uname) {
		// TODO Auto-generated method stub
		return listbysql("select * from viewteach t where t.sid='"+uname+"' order by t.times desc");
	}
	//消息的大小
	public List contentview(String uname) {
		// TODO Auto-generated method stub
		return listbysql("select * from viewstu s,viewteach t where s.sid=t.sid and t.sid='"+uname+"'");
	}
}
