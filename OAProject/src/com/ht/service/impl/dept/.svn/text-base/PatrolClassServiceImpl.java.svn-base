package com.ht.service.impl.dept;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.dept.PatrolClassService;
import com.ht.vo.emp.Patrol;

public class PatrolClassServiceImpl extends Hibrenate_Dao implements PatrolClassService{

	public boolean addpatrol(Patrol p) {
		// TODO Auto-generated method stub
		return addObj(p);
	}

	public boolean delpatrol(Patrol p) {
		// TODO Auto-generated method stub
		return deleteObj(p);
	}

	public Patrol getpatrol(int id) {
		// TODO Auto-generated method stub
		return (Patrol)getObj(Patrol.class, id);
	}

	public List patrollist() {
		// TODO Auto-generated method stub
		return list("from Patrol");
	}

	public boolean updpatrol(Patrol p) {
		// TODO Auto-generated method stub
		return updateObj(p);
	}


}
