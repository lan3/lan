package com.ht.service.stu;

import java.util.List;

import com.ht.vo.stu.Job;

public interface JobService {
	public boolean addjob(Job job);
	public List joblist();
	public List likelist(String uname);
	public Job Byid(int jid);
	public boolean deljob(Job job);
}
