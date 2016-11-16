package com.ht.service.edu.imp;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.edu.eduemp;
import com.ht.vo.edu.DBacke;
import com.ht.vo.edu.Faculymff;
import com.ht.vo.edu.Object;
import com.ht.vo.edu.Objectimg;
import com.ht.vo.edu.Tra;

public class eduimp extends Hibrenate_Dao implements eduemp{
	//查找全部课程
	public List objectfindall() {
		// TODO Auto-generated method stub
		List list=list("from Object");
		return list;
	}

	public List onjectcurr(int currpage,int pagecurr ) {
		// TODO Auto-generated method stub
		List list=pagelist("from Object", currpage, pagecurr);
		return list;
	}

	public int gettotalpage() {
		// TODO Auto-generated method stub
		return getrow("select count(*) from Object");
	}

	public void update(Object obj) {
		// TODO Auto-generated method stub
		updateObj(obj);
	}

	public void detele(Object obj) {
		// TODO Auto-generated method stub
		deleteObj(obj);
	}

	public List dbackefindall() {
		// TODO Auto-generated method stub
		return listbysql("select d.d_id,d.d_month,e.ename,d.d_status,d.classname from d_backe d,emp e where e.eid=d.eid");
	}
	public List dbackefindall(int currpage,int PageCount) {
		// TODO Auto-generated method stub
		return pagelistbysql("select d.d_id,d.d_month,e.ename,d.d_status,d.classname from d_backe d,emp e where e.eid=d.eid",currpage*PageCount,PageCount);
	}
	public List dbackefind(int sta) {
		// TODO Auto-generated method stub
		return listbysql("select d.d_id,d.d_month,e.ename,d.d_status,d.classname from d_backe d,emp e where e.eid=d.eid and d.d_status="+sta);
	}
	public List dbackefind(int sta,int currpage,int PageCount) {
		// TODO Auto-generated method stub
		return pagelistbysql("select d.d_id,d.d_month,e.ename,d.d_status,d.classname from d_backe d,emp e where e.eid=d.eid and d.d_status="+sta,currpage*PageCount,PageCount);
	}
	public void dbackeadd(DBacke db) {
		// TODO Auto-generated method stub
		addObj(db);
	}

	public void dbackeup(DBacke db) {
		// TODO Auto-generated method stub
		updateObj(db);
	}

	public void dbackedele(DBacke db) {
		// TODO Auto-generated method stub
		deleteObj(db);
	}

	public DBacke dbackefind(Integer did) {
		// TODO Auto-generated method stub
		DBacke db=(DBacke) getObj(DBacke.class, did);
		return db;
	}
	//查找反馈中的教员
	public List femplist() {
		// TODO Auto-generated method stub
		List list=listbysql("select e.ename,e.eid from d_backe d,emp e where d.d_status=1 and d.eid=e.eid");
		return list;
	}
	//查找反馈中的班级
	public List fclasslist(String name) {
		// TODO Auto-generated method stub
		List list=listbysql("select * from CLASSES t where t.empteach='"+name+"' or t.eid='"+name+"' or t.empteaches='"+name+"'");
		return list;
	}

	public void fsave(Faculymff facu) {
		// TODO Auto-generated method stub
		addObj(facu);
	}

	public List faculist(int currpage,int PageCount,String name) {
		// TODO Auto-generated method stub
		
		List list=pagelistbysql("select * from faculymff where ename='"+name+"'",currpage*PageCount, PageCount);
		return list;
	}

	public int facurow(String name) {
		// TODO Auto-generated method stub
		
		return getrow("select count(*) from Faculymff where ename='"+name+"'");
	}

	public void traadd(Tra tra) {
		// TODO Auto-generated method stub
		addObj(tra);
	}

	public List tralist() {
		// TODO Auto-generated method stub
		List list=list("from Tra");
		return list;
	}
	public List tralist(int currpage,int PageCount) {
		// TODO Auto-generated method stub
		List list=pagelist("from Tra",currpage,PageCount);
		return list;
	}
	public Tra trafind(int tid) {
		// TODO Auto-generated method stub
		Tra tra=(Tra) getObj(Tra.class, tid);
		return tra;
	}

	public void add(Object obj) {
		// TODO Auto-generated method stub
		addObj(obj);
	}

	public List objectimglist() {
		// TODO Auto-generated method stub
		List list=list("from Objectimg");
		return list;
	}
	public List objectimglist(int currpage,int PageCount) {
		// TODO Auto-generated method stub
		List list=pagelist("from Objectimg",currpage,PageCount);
		return list;
	}
	public List objectimglist(String kecheng,String ename,String classname,int currpage,int PageCount) {
		// TODO Auto-generated method stub
		String sql="select * from objectimg where 1=1";
		if(kecheng!=null&&!kecheng.equals("")){
			sql+=" and objectname='"+kecheng+"'";
		}
		if(ename!=null&&!ename.equals("")){
			sql+=" and kename='"+ename+"'";
		}
		if(classname!=null&&!classname.equals("")){
			sql+=" and classname='"+classname+"'";
		}
		List list=pagelistbysql(sql,currpage*PageCount,PageCount);
		return list;
	}
	public void objectimgadd(Objectimg obj) {
		// TODO Auto-generated method stub
		addObj(obj);
	}

	public void objectimgdelete(Objectimg obj) {
		// TODO Auto-generated method stub
		deleteObj(obj);
	}

	public void objectimgupdate(Objectimg obj) {
		// TODO Auto-generated method stub
		updateObj(obj);
	}

	public Objectimg getobj(int kid) {
		// TODO Auto-generated method stub
		
		return (Objectimg) getObj(Objectimg.class, kid);
	}

	public void tradele(Tra tra) {
		// TODO Auto-generated method stub
		deleteObj(tra);
	}

}
