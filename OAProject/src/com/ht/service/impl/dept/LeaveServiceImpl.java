package com.ht.service.impl.dept;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.dept.LeaveService;
import com.ht.vo.emp.Leave;

public class LeaveServiceImpl extends Hibrenate_Dao implements LeaveService{

	public boolean addleave(Leave leave) {
		// TODO Auto-generated method stub
		return addObj(leave);
	}

	public List leavelist() {
		// TODO Auto-generated method stub
		return list("from Leave");
	}

	public Leave getleave(int id) {
		return (Leave)getObj(Leave.class, id);
	}

	public boolean updleave(Leave leave) {
		// TODO Auto-generated method stub
		return updateObj(leave);
	}

	public boolean delleave(Leave leave) {
		// TODO Auto-generated method stub
		return deleteObj(leave);
	}

	public List leavelists(int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelist("from Leave ", currpage, pagecount);
	}


}
