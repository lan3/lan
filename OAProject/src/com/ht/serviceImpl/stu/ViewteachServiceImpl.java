package com.ht.serviceImpl.stu;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.stu.ViewteachService;
import com.ht.vo.stu.Views;
import com.ht.vo.stu.Viewteach;

public class ViewteachServiceImpl extends Hibrenate_Dao implements ViewteachService{

	//添加回复信息
	public boolean addteachview(Viewteach teach) {
		// TODO Auto-generated method stub
		return addObj(teach);
	}

	//查看反馈内容
	public List queryviews() {
		// TODO Auto-generated method stub
		return listbysql("select vcontent,views from views ");
	}

	//获取id
	public Views Byid(int vid) {
		// TODO Auto-generated method stub
		Views v= (Views) getObj(Views.class, vid);
		return v;
	}

	//查询老师回复信息
	public List queryview(String uname) {
		// TODO Auto-generated method stub
		return listbysql("select * from viewteach where sid='"+uname+"'");
	}

	//消息分页
	public List viewfy(int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelistbysql("select * from Viewteach", (currpage-1)*pagecount, pagecount);
	}

	//查询学生回复消息
	public List contview(String uname) {
		// TODO Auto-generated method stub
		return listbysql("select * from viewstu s where s.sid='"+uname+"' order by s.stime desc");
	}

	//查询老师回复消息
	public List teachcont(String uname,String stuname) {
		// TODO Auto-generated method stub
		return listbysql("select * from viewteach t where t.teach='"+uname+"' and t.sid='"+stuname+"' order by t.times desc");
	}

}
