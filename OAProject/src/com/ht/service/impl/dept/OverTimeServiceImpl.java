package com.ht.service.impl.dept;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.dept.OverTimeService;
import com.ht.vo.emp.Overtime;

public class OverTimeServiceImpl extends Hibrenate_Dao implements OverTimeService{

	public boolean addovertime(Overtime over) {
		// TODO Auto-generated method stub
		return addObj(over);
	}

	public boolean delovertime(Overtime over) {
		// TODO Auto-generated method stub
		return deleteObj(over);
	}

	public Overtime getovertime(int id) {
		// TODO Auto-generated method stub
		return (Overtime)getObj(Overtime.class, id);
	}

	public List overtimelist() {
		// TODO Auto-generated method stub
		return list("from Overtime");
	}

	public boolean updovertime(Overtime over) {
		// TODO Auto-generated method stub
		return updateObj(over);
	}

	public List overtimelists(int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelist("from Overtime", currpage, pagecount);
	}

}
