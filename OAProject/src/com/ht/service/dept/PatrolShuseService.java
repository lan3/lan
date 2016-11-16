package com.ht.service.dept;

import java.util.List;

import com.ht.vo.emp.Patrol;
import com.ht.vo.emp.Patrolshuse;

public interface PatrolShuseService {
	public List patrolshuselist();
	public boolean addpatrol(Patrolshuse pss);
	public Patrolshuse getpatrol(int id);
	public boolean delpatrol(Patrolshuse pss);
	public boolean updpatrol(Patrolshuse pss);
}
