package com.ht.service.dept;

import java.util.List;

import com.ht.vo.emp.Report;

public interface ReportService {
	public boolean addreport(Report report);
	public List reportlist();
	public List selelist();
	public List selelist(int currpage,int pagecount);
	public List seleid(String name);
	public boolean delreport(Report report);
	public Report getreport(int id);
	public boolean updreport(Report report);
}
