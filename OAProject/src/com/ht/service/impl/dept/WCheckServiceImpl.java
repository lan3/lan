package com.ht.service.impl.dept;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.dept.WCheckService;
import com.ht.vo.emp.Workcheck;

public class WCheckServiceImpl extends Hibrenate_Dao implements WCheckService {

	public boolean addcheck(Workcheck wc) {
		return addObj(wc);
	}

	public List checklist() {
		List list= listbysql("select * from workcheck");
		return list;
	}

	public boolean delcheck(Workcheck wc) {
		// TODO Auto-generated method stub
		return deleteObj(wc);
	}

	public Workcheck getcheck(int id) {
		// TODO Auto-generated method stub
		return (Workcheck)getObj(Workcheck.class, id);
	}

}
