package com.ht.service.impl.dept;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.dept.DutyService;
import com.ht.vo.emp.Duty;

public class DutyServiceImpl extends Hibrenate_Dao implements DutyService{

	public boolean addduty(Duty duty) {
		// TODO Auto-generated method stub
		return addObj(duty);
	}

	public List dutylist() {
		// TODO Auto-generated method stub
		return list("from Duty");
	}

	public List selemplist() {
		// TODO Auto-generated method stub
		return listbysql("select eid,ename from emp");
	}

	public boolean delduty(Duty duty) {
		// TODO Auto-generated method stub
		return deleteObj(duty);
	}

	public Duty getduty(int id) {
		// TODO Auto-generated method stub
		return (Duty)getObj(Duty.class, id);
	}

	public boolean updduty(Duty duty) {
		// TODO Auto-generated method stub
		return updateObj(duty);
	}

	public List seleid(String name) {
		// TODO Auto-generated method stub
		return list("select eid from emp where ename='"+name+"'");
	}

	public List dutylists(int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelist("from Duty", currpage, pagecount);
	}

}
