package com.ht.service.impl.dept;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.dept.EmpService;
import com.ht.vo.emp.Emp;
import com.ht.vo.emp.Family;
import com.ht.vo.emp.Jobs;

public class EmpServiceImpl extends Hibrenate_Dao  implements EmpService{

	public boolean addemp(Emp emp) {
		// TODO Auto-generated method stub
		return addObj(emp);
	}

	public boolean addfamily(Family fa) {
		// TODO Auto-generated method stub
		return addObj(fa);
	}

	public boolean addjobs(Jobs job) {
		// TODO Auto-generated method stub
		return addObj(job);
	}

	public List emplist() {
		return listbysql("select eid,ename,sex,certid,eaddr,city,etry,etel,deptid,ejob,eename from emp where eid not in 1000");
	}

	public List geteid(String qq) {
		return listbysql("select eid from emp where eqq="+qq);
	}

	public boolean delemp(int id) {
		
		return delbysql("delete emp where eid="+id);
	}

	public boolean delfamily(int id) {
		// TODO Auto-generated method stub
		return delbysql("delete family where eid="+id);
	}

	public boolean deljobs(int id) {
		// TODO Auto-generated method stub
		return delbysql("delete jobs where eid="+id);
	}

	public Emp selemp(int id) {
		// TODO Auto-generated method stub
		return (Emp)getObj(Emp.class, id);
	}

	public List selfamily(int id) {
		// TODO Auto-generated method stub
		return listbysql("select * from family where eid="+id);
	}

	public List seljobs(int id) {
		// TODO Auto-generated method stub
		return listbysql("select * from jobs where eid="+id);
	}

	public boolean updemp(Emp emp) {
		// TODO Auto-generated method stub
		return updateObj(emp);
	}

	public boolean updfamily(Family family) {
		// TODO Auto-generated method stub
		return updateObj(family);
	}

	public boolean updjobs(Jobs jobs) {
		// TODO Auto-generated method stub
		return updateObj(jobs);
	}

	public List selemp() {
		// TODO Auto-generated method stub
		return listbysql("select ename from emp");
	}

	public List selename(int eid) {
		// TODO Auto-generated method stub
		return listbysql("select ename from emp where eid="+eid);
	}

	public List emplist(int currpage, int pagecont) {
		// TODO Auto-generated method stub
		return pagelistbysql("select eid,ename,sex,certid,eaddr,city,etry,etel,deptid,ejob from emp where eid not in 1000", (currpage-1)*pagecont, pagecont);
	}

	public List emplists() {
		// TODO Auto-generated method stub
		return list("from Emp");
	}
	
}
