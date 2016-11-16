package com.ht.serviceImpl.stu;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.stu.StuleveService;
import com.ht.vo.stu.Stuleve;

public class StuleveImpl extends Hibrenate_Dao implements StuleveService{

	public boolean addleve(Stuleve leve) {
		
		return addObj(leve);
	}
	//请假列表
	public List query(String classid) {
		
		return listbysql("select s.* from stuleve s,classes c where s.sid='"+classid+"' and c.classname=s.classid");
	}
	//修改状态
	public boolean update(Stuleve stu) {
		
		return updateObj(stu);
	}
	//获取ID
	public Stuleve Byid(int leveid) {
		Stuleve stu= (Stuleve) getObj(Stuleve.class, leveid);
		return stu;
	}
	//任课老师同意
	public List teachlist(String uname) {
		return listbysql("select s.*,c.empteaches from classes c,(select * from stuleve where empteach='"+uname+"' and starts='待审核') s where classname in(select classid from stuleve where empteach='"+uname+"' )");
	}
	//班主任审批
	public List teaches() {

		return listbysql("select s.*,c.* from stuleve s,(select ename from emp where eid in(select eid from dept where dname='行政部')) c where s.empteach='何庆'");
	}
	//行政部审批
	public List dept() {
		
		return listbysql("select * from stuleve where empteach ='廖文汉'");
	}
	//删除
	public boolean del(Stuleve stu) {
		
		return deleteObj(stu);
	}
	//查看自己的请假条
	public List myleve(String uname) {
		// TODO Auto-generated method stub
		return listbysql("select * from stuleve where sid='"+uname+"'");
	}
	//分页
	public List levefy(String uname,int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelistbysql("select s.* from stuleve s,classes c where s.sid='"+uname+"' and c.classname=s.classid", (currpage-1)*pagecount, pagecount);
	}
	
}
