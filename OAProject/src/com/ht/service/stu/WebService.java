package com.ht.service.stu;

import java.util.List;

import com.ht.vo.stu.Scoreweb;
import com.ht.vo.stu.Stuscore;

public interface WebService {
	public boolean addweb(Scoreweb web);//主表添加
	public List weblist();
	public List Bystu(String classid);//根据班级查询学生
	public boolean addstucore(Stuscore stu);//添加子表数据
	public List Byliststu();//查询子表数据
	public Stuscore Byid(int stuid);
	public boolean delstucore(Stuscore stu);
	public List stuweb(String uname);//根据学生姓名查找
	public List webBylist(int currpage,int pagecount);
}
