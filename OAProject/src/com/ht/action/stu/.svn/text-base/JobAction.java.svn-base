package com.ht.action.stu;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.stu.ClassService;
import com.ht.service.stu.JobService;
import com.ht.vo.stu.Job;

public class JobAction extends BaseAction{
	
	 JobService job= (JobService) getService("jobService");
	 //班级
	 ClassService cl= (ClassService) getService("classService"); 
	 	
	private Job j;
	
	public String add(){
		job.addjob(j);
		System.out.println(j.getJobname());
		return list();
	}
	//查询班级
	public String liststu(){
		List listclass=cl.queryClass();//班级
		this.setValToRequest("listclass", listclass);
		return "to_add";
	}
	public String list(){
		
		List list=job.joblist();
		this.setValToRequest("list", list);
		return "to_list";	
	}
	//根据班级/姓名 查找学生
	public String classtu(){
		HttpServletRequest request=ServletActionContext.getRequest();
		//获取页面传来的参数
		String uname= request.getParameter("uname");
		List query=job.likelist(uname);
		request.setAttribute("list", query);
		return "to_like";
	}
	//删除
	public String del(){
		Job jid=job.Byid(j.getJobid());
		job.deljob(jid);
		return list();
	}

	public Job getJ() {
		return j;
	}
	public void setJ(Job j) {
		this.j = j;
	}
}
