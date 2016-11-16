package com.ht.service.impl.dept;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.dept.WorkDoingService;
import com.ht.vo.emp.Workdoing;

public class WorkDoingServiceImpl extends Hibrenate_Dao implements WorkDoingService{

	public boolean addwork(Workdoing w) {
		// TODO Auto-generated method stub
		return addObj(w);
	}

	public boolean delwork(Workdoing w) {
		// TODO Auto-generated method stub
		return deleteObj(w);
	}

	public Workdoing getwork(int id) {
		// TODO Auto-generated method stub
		return (Workdoing)getObj(Workdoing.class, id);
	}

	public List sellist() {
		// TODO Auto-generated method stub
		return list("from Workdoing");
	}

	public boolean updwork(Workdoing w) {
		// TODO Auto-generated method stub
		return updateObj(w);
	}

	public List sellists(int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelist("from Workdoing", currpage, pagecount);
	}

}
