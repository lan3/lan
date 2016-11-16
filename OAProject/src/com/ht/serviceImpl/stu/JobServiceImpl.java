package com.ht.serviceImpl.stu;

import java.util.List;
import com.ht.service.stu.JobService;
import com.ht.common.Hibrenate_Dao;
import com.ht.vo.stu.Job;

public class JobServiceImpl extends Hibrenate_Dao implements JobService{


	public boolean addjob(Job job) {
		// TODO Auto-generated method stub
		return addObj(job);
	}


	public List joblist() {
		// TODO Auto-generated method stub
		return list("from Job");
	}



	public List likelist(String uname) {
		// TODO Auto-generated method stub
		return listbysql("select * from job where classid like '%"+uname+"%'or sid like '%"+uname+"%' ");
	}



	public Job Byid(int jid) {
		Job job=(Job) getObj(Job.class, jid);
		return job;
	}


	public boolean deljob(Job job) {
		// TODO Auto-generated method stub
		return deleteObj(job);
	}

}
