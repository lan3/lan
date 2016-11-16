package com.ht.service.impl.dept;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.dept.ReportService;
import com.ht.vo.emp.Report;

public class ReportServiceImpl extends Hibrenate_Dao implements ReportService{

	public boolean addreport(Report report) {
		// TODO Auto-generated method stub
		return addObj(report);
	}

	public List reportlist() {
		// TODO Auto-generated method stub
		return list("from Report");
	}

	public List seleid(String name) {
		// TODO Auto-generated method stub
		return listbysql("select eid from emp where ename='"+name+"'");
	}

	public boolean delreport(Report report) {
		// TODO Auto-generated method stub
		return deleteObj(report);
	}

	public Report getreport(int id) {
		// TODO Auto-generated method stub
		return (Report)getObj(Report.class, id);
	}

	public boolean updreport(Report report) {
		// TODO Auto-generated method stub
		return updateObj(report);
	}

	public List selelist() {
		// TODO Auto-generated method stub
		return listbysql("select * from report");
	}

	public List selelist(int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelistbysql("select * from report", (currpage-1)*pagecount, pagecount);
	}


	
}
