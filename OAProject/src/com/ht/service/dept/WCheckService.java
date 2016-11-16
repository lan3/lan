package com.ht.service.dept;

import java.util.List;

import com.ht.vo.emp.Workcheck;

public interface WCheckService {
	public boolean addcheck(Workcheck wc);
	public List checklist();
	public boolean delcheck(Workcheck wc);
	public Workcheck getcheck(int id);
}
