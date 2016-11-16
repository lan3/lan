package com.ht.serviceImpl.stu;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.stu.ComService;
import com.ht.vo.stu.Computers;

public class ComServiceImpl extends Hibrenate_Dao implements ComService{
	//查询数据
	public List Comlist() {
		
		return list( "from Computers");
	}
	//新增电脑领用信息
	public boolean addCom(Computers com) {
		
		return addObj(com);
	}
	//根据班级查找任课老师
	public List Teachquery(String classid) {
		
		return listbysql("select s.* from classes c,computers s where  s.sids='"+classid+"' and c.classname=s.classid");
	}
	//获取ID
	public Computers ById(int cid) {
	
		Computers coid= (Computers) getObj(Computers.class, cid);
		return coid;
	}
	//查找班主任
	public List TeachesQuery(String classid) {
	
		return listbysql("select s.*,c.empteaches from classes c,computers s where  c.classname='"+classid+"' and c.classname=s.classid");
	}
	//修改状态
	public boolean updStart(Computers com) {
		
		return updateObj(com);
	}
	//查找后勤部管理人
	public List deptQuery() {
		
		return listbysql("select s.*,c.* from computers s,(select ename from emp where eid in(select eid from dept where dname='后勤部')) c where s.empteach='王鹏英'");
	}
	//后勤管理人确认
	public List deql() {
		
		return listbysql("select * from computers  where starts='审核中'");
	}
	//老师审批
	public List teach() {
		
		return listbysql("select s.*,c.empteaches from classes c,(select * from computers where empteach='周玉祥') s where classname in(select classid from computers where empteach='周玉祥')");
	}
	//删除
	public boolean del(Computers cid) {
		return deleteObj(cid);
	}
	//查询自己的领用申请表
	public List mycomput(String uname) {
		// TODO Auto-generated method stub
		return listbysql("select s.* from classes c,computers s where  s.sids='"+uname+"' and c.classname=s.classid");
	}
	//分页
	public List computfy(String uname, int currpage, int pagecount) {
		
		return pagelistbysql("select s.* from classes c,computers s where  s.sids='"+uname+"' and c.classname=s.classid", (currpage-1)*pagecount, pagecount);
	}
}
