package com.ht.service.stu;

import java.util.List;

import com.ht.vo.stu.Computers;

public interface ComService {
	//新增学生电脑领用信息
	public boolean addCom(Computers com);
	//查询数据
	public List Comlist();
	//根据班级查找老师
	public List Teachquery(String classid);
	//查找班主任
	public List TeachesQuery(String classid);
	//修改状态
	public boolean updStart(Computers com);
	//获取ID
	public Computers ById(int cid);
	//查找后勤部管理人
	public List deptQuery();
	//后勤管理人确认
	public List deql();
	//任课老师审批
	public List teach();
	//删除
	public boolean del(Computers cid);
	//查询自己的领用申请表
	public List mycomput(String uname);
	//分页
	public List computfy(String uname,int currpage,int pagecount);
}
