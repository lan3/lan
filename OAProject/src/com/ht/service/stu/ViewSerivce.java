package com.ht.service.stu;


import java.util.List;

import com.ht.vo.stu.Views;
import com.ht.vo.stu.Viewstu;

public interface ViewSerivce {
	public boolean addview(Views vs);//添加学生反馈
	public List viewList();//查询学生反馈
	public List fenye(int currpage,int pagecount);//分页
	public Views Byid(int vid);//获取id
	public List viewstu(String uname);//根据ID查询已提交的反馈
	public List viewstu(String uname,int currpage,int pagecount);//分页
	public List viewstucont(String uname,int currpage,int pagecount);//查询回复内容
	public boolean addviews(Viewstu stu);//回复消息
	public List contview(String uname);//查询学生回复消息
	public List teachcont(String uname);//查询老师回复消息
	public List contentview(String uname);//所有消息的大小
	
}
