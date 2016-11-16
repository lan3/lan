package com.ht.service.stu;

import java.util.List;

import com.ht.vo.stu.Stunum;

public interface StunumService {
	public boolean addnum(Stunum num);
	public List numlist();
	public Stunum Byid(int stuno);
	public boolean delnum(Stunum num);
	public boolean update(Stunum num);
	public List numlist(int currpage,int pagecount);
	public List Byclass(String classid);
	public  List stuclass(String classid);
	public List likestu(String uname);
}	
