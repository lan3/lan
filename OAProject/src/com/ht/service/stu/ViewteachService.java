package com.ht.service.stu;

import java.util.List;

import com.ht.vo.stu.Views;
import com.ht.vo.stu.Viewteach;

public interface ViewteachService {
	public List queryviews();//查看反馈内容
	public boolean addteachview(Viewteach teach);//添加回复信息
	public Views Byid(int vid);//获取id
	public List queryview(String uname);//查询老师回复信息
	public List viewfy(int currpage,int pagecount);
	public List contview(String uname);//查询学生回复消息
	public List teachcont(String uname,String stuname);//查询老师回复消息
}
