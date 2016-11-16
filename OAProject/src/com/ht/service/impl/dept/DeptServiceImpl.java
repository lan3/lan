package com.ht.service.impl.dept;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.dept.DeptService;
import com.ht.vo.emp.Dept;

public class DeptServiceImpl extends Hibrenate_Dao implements DeptService{
	
	
	public List deptlist(int currpage,int pagecount) {
		
		return pagelist("from Dept",currpage,pagecount);
	}

	public boolean deptadd(Dept dept) {
		return addObj(dept);
	}

	public Dept getdept(int id) {
		
		return (Dept)getObj(Dept.class, id);
	}

	public boolean deldept(Dept dept) {
		// TODO Auto-generated method stub
		return deleteObj(dept);
	}

	public boolean upddept(Dept dept) {
		// TODO Auto-generated method stub
		return updateObj(dept);
	}

	public List seldept() {
		return listbysql("select dname from dept");
	}

	public List sellist() {
		// TODO Auto-generated method stub
		return list("from Dept");
	}



	

}
