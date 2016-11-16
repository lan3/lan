package com.ht.action.edu;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.common.find;
import com.ht.service.edu.eduemp;
import com.ht.vo.edu.DBacke;
import com.ht.vo.edu.Faculymff;
import com.ht.vo.edu.Object;
import com.ht.vo.stu.Student;

public class eduaction extends BaseAction{
	private List list;
	private Object obj;//课程表对象
	eduemp imp=(eduemp) getService("eduservice");
	public String list() {//课程表列表
	
		list=imp.objectfindall();
		return "success";
	}
	public String update(){//课程表修改
		try {
			obj.setOnjectname(new String(obj.getOnjectname().getBytes("ISO-8859-1"),"utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		imp.update(obj);
		return "toobject";
	}
	public String detele(){//课程表删除
		imp.detele(obj);
		return "toobject";
	}
	public String add(){//课程表添加
		System.out.println("1212");
		try {
			obj.setOnjectname(new String(obj.getOnjectname().getBytes("ISO-8859-1"),"utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		imp.add(obj);
		return "toobject";
	}
	public String dbackelist(){//教员反馈列表
		List li=imp.dbackefindall();
		find f=new find();
		List l=f.enamefind();
		pagecount=10;//每页个数
		 totalpage=li.size();//总条数
		 totalrow=(totalpage+pagecount-1)/pagecount;//总页数
		if(currpage<0){
			currpage=0;
		}
		if(currpage>=totalrow){
			currpage=totalrow-1;
		}
		list=imp.dbackefindall(currpage,pagecount);
		setValToRequest("l", l);
		setValToRequest("list", list);
		return "todbacke";
	}
	private DBacke db;
	public String dbackeadd(){//添加教员反馈列表
		db.setDStatus(0);
		
		imp.dbackeadd(db);
	
		return dbackelist();
	}
	public String todbackeadd(){//去添加教员反馈列表
		find f=new find();
		List l=f.enamefind();
		List li=f.classfind();
		setValToRequest("l", l);
		setValToRequest("li", li);
		return "todbackeadd";
	}
	public String dbackeup(){//结束教员反馈列表
		db=imp.dbackefind(db.getDId());
		db.setDStatus(1);
		imp.dbackeup(db);
		imp.dbackeup(db);
		return dbackelist();
	}
	public String dbackedele(){//删除教员反馈列表
		imp.dbackedele(db);
		return dbackelist();
	}
	private int aaa;
	public int getAaa() {
		return aaa;
	}
	public void setAaa(int aaa) {
		this.aaa = aaa;
	}
	private String cname;
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String faculist(){//跳转到评分表
		find f=new find();
		java.lang.Object  sid=   ServletActionContext.getRequest().getSession().getAttribute("id");
		boolean bin=f.isfacu(ename, cname, Integer.parseInt(sid+""));//没有就是false
		if(bin){
			aaa=1;
			return "success";
		}else{
			return "success";
		}
	}
	public String faculist2(){
		try {
			ename=new String(ename.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			cname=new String(cname.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "tofacu";
	}
	public String tofaculist(){//学生反馈入口
		List li=imp.dbackefind(0);
		pagecount=10;//每页个数
		 totalpage=li.size();//总条数
		 totalrow=(totalpage+pagecount-1)/pagecount;//总页数
		if(currpage<0){
			currpage=0;
		}
		if(currpage>=totalrow){
			currpage=totalrow-1;
		}
		list=imp.dbackefind(0, currpage, pagecount);
		setValToRequest("list", list);
		return "faculymfflist";
	}
	public String tofacutolist(){//去查看反馈结果
		List li=imp.dbackefind(1);
		pagecount=10;//每页个数
		 totalpage=li.size();//总条数
		 totalrow=(totalpage+pagecount-1)/pagecount;//总页数
		if(currpage<0){
			currpage=0;
		}
		if(currpage>=totalrow){
			currpage=totalrow-1;
		}
		list=imp.dbackefind(1, currpage, pagecount);
		setValToRequest("list", list);
		return "tofaculymfflist";
	}
	private String ename;
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	private List li;
	public List getLi() {
		return li;
	}
	public void setLi(List li) {
		this.li = li;
	}
	private Faculymff facu;
	public Faculymff getFacu() {
		return facu;
	}
	public void setFacu(Faculymff facu) {
		this.facu = facu;
	}
	//保存反馈评分表
	public  String facusave(){
		java.lang.Object  sid=   ServletActionContext.getRequest().getSession().getAttribute("id");
		facu.setStuid(Integer.parseInt(sid+""));
		imp.fsave(facu);
		return "todefault";
	}
	int pagecount;
	int currpage;
	int totalpage;
	int totalrow;
	//查看反馈评分表
	public String facufind(){
		try {
			ename=new String(ename.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 pagecount=2;//每页个数
		 totalpage=imp.facurow(ename);//总条数
		 totalrow=(totalpage+pagecount-1)/pagecount;//总页数
		if(currpage<0){
			currpage=0;
		}else if(currpage>=totalrow){
			currpage=totalrow-1;
		}
		list=imp.faculist(currpage, pagecount,ename);
		return "toimglist";
	}
	public List getList() {
		return list;
	}
	public DBacke getDb() {
		return db;
	}
	public void setDb(DBacke db) {
		this.db = db;
	}
	public void setList(List list) {
		this.list = list;
	}
	public Object getObj() {
		return obj;
	}
	public void setObj(Object obj) {
		this.obj = obj;
	}
	public int getPagecount() {
		return pagecount;
	}
	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}
	public int getCurrpage() {
		return currpage;
	}
	public void setCurrpage(int currpage) {
		this.currpage = currpage;
	}
	public int getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	public int getTotalrow() {
		return totalrow;
	}
	public void setTotalrow(int totalrow) {
		this.totalrow = totalrow;
	}

}
