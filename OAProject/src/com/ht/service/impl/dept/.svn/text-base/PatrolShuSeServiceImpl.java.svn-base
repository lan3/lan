package com.ht.service.impl.dept;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.dept.PatrolClassService;
import com.ht.service.dept.PatrolShuseService;
import com.ht.vo.emp.Patrol;
import com.ht.vo.emp.Patrolshuse;

public class PatrolShuSeServiceImpl extends Hibrenate_Dao implements PatrolShuseService{

	public boolean addpatrol(Patrolshuse pss) {
		// TODO Auto-generated method stub
		return addObj(pss);
	}

	public boolean delpatrol(Patrolshuse pss) {
		// TODO Auto-generated method stub
		return deleteObj(pss);
	}

	public Patrolshuse getpatrol(int id) {
		// TODO Auto-generated method stub
		return (Patrolshuse)getObj(Patrolshuse.class, id);
	}

	public List patrolshuselist() {
		// TODO Auto-generated method stub
		return list("from Patrolshuse");
	}

	public boolean updpatrol(Patrolshuse pss) {
		// TODO Auto-generated method stub
		return updateObj(pss);
	}



}
