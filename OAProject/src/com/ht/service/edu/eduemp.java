package com.ht.service.edu;

import java.util.List;

import com.ht.vo.edu.DBacke;
import com.ht.vo.edu.Faculymff;
import com.ht.vo.edu.Object;
import com.ht.vo.edu.Objectimg;
import com.ht.vo.edu.Tra;

public interface eduemp {
	//object课程表
	public List objectfindall();//object列表
	public List onjectcurr(int currpage,int pagecurr);//object分页
	public int gettotalpage();//查询总条数
	public void update(Object obj);//修改
	public void detele(Object obj);//删除
	public void add(Object obj);//添加
	//dbacke教员反馈
	public List dbackefindall();
	public DBacke dbackefind(Integer did);
	public List dbackefindall(int currpage,int PageCount);
	public void dbackeadd(DBacke db);
	public void dbackeup(DBacke db);
	public void dbackedele(DBacke db);
	public List dbackefind(int sta) ;
	public List dbackefind(int sta,int currpage,int PageCount);
	//ffaculymff分数表
	public List femplist();//查找反馈中的教员
	public List fclasslist(String name);//查找教员所在的班级
	public void fsave(Faculymff facu);
	public List faculist(int currpage,int pagecurr,String name);//查看评分分页
	public int facurow(String name) ;
	//tra教研表
	public  void traadd(Tra tra);
	public List tralist();
	public List tralist(int currpage,int PageCount);
	public Tra trafind(int tid);
	public void tradele(Tra tra);
	//objectimg
	public List objectimglist();
	public List objectimglist(int currpage,int PageCount);
	public List objectimglist(String kecheng,String ename,String classname,int currpage,int PageCount);
	public void objectimgupdate(Objectimg obj);
	public void objectimgdelete(Objectimg obj);
	public void objectimgadd(Objectimg obj);
	public Objectimg getobj(int kid);
}
