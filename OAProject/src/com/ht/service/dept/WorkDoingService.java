package com.ht.service.dept;

import java.util.List;

import com.ht.vo.emp.Workdoing;

public interface WorkDoingService {
	public List sellist();
	public List sellists(int currpage,int pagecount);
	public Workdoing getwork(int id);
	public boolean addwork(Workdoing w);
	public boolean updwork(Workdoing w);
	public boolean delwork(Workdoing w);
}
