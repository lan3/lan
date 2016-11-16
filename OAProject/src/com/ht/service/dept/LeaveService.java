package com.ht.service.dept;

import java.util.List;

import com.ht.vo.emp.Leave;

public interface LeaveService {
	public List leavelist();
	public List leavelists(int currpage,int pagecount);
	public boolean addleave(Leave leave);
	public Leave getleave(int id);
	public boolean updleave(Leave leave);
	public boolean delleave(Leave leave);
}
