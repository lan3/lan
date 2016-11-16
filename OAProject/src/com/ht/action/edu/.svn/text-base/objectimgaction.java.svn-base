package com.ht.action.edu;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.common.find;
import com.ht.service.edu.eduemp;
import com.ht.vo.edu.Objectimg;

public class objectimgaction extends BaseAction{
	eduemp imp=(eduemp) getService("eduservice");
	private Objectimg obj;
	public Objectimg getObj() {
		return obj;
	}
	public void setObj(Objectimg obj) {
		this.obj = obj;
	}
	int pagecount;
	int currpage;
	int totalpage;
	int totalrow;
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
	public String list(){
		List li=imp.objectimglist();
		pagecount=10;//每页个数
		 totalpage=li.size();//总条数
		 totalrow=(totalpage+pagecount-1)/pagecount;//总页数
		if(currpage<1){
			currpage=1;
		}
		if(currpage>=totalrow){
			currpage=totalrow;
		}
		List list=imp.objectimglist(currpage, pagecount);
		setValToRequest("list", list);
		return "toobjectimg";
	}
	public  String add(){
		String name=ServletActionContext.getRequest().getSession().getAttribute("name")+"";
		if(name!=null||!name.equals("")){
			obj.setkename(name);
		}
		imp.objectimgadd(obj);
		return list();
	}
	public  String toadd(){
		find f=new find();
		List l=f.classfind();
		List li=f.enamefind();
		List lil=imp.objectfindall();
		setValToRequest("l", l);
		setValToRequest("li", li);
		setValToRequest("lil", lil);
		return "toobjectimgadd";
	}
	public String toupdate(){
		find f=new find();
		List l=f.classfind();
		List li=f.enamefind();
		List lil=imp.objectfindall();
		setValToRequest("l", l);
		setValToRequest("li", li);
		setValToRequest("lil", lil);
		obj=imp.getobj(obj.getKid());
		return "toobjectupd";
	}
	public String upd(){
		imp.objectimgupdate(obj);
		return list();
	}
	public String delete(){
		imp.objectimgdelete(obj);
		return list();
	}
	public String tolist(){
		find f=new find();
		List li=imp.objectimglist();
		List lil=imp.objectfindall();//查询课程
		List l=f.classfind();//查询班级
		List lii=f.enamefind();//查找任课老师
		String kecheng=ServletActionContext.getRequest().getParameter("kecheng");
		String ename=ServletActionContext.getRequest().getParameter("ename");
		String classname=ServletActionContext.getRequest().getParameter("classname");
			try {
				if(kecheng!=null&&kecheng!=""){
				kecheng=new String(kecheng.getBytes("iso-8859-1"),"utf-8");
				}
				if(ename!=null&&!ename.equals("")){
					ename=new String(ename.getBytes("iso-8859-1"),"utf-8");
				}
				if(classname!=null&&!classname.equals("")){
					classname=new String(classname.getBytes("iso-8859-1"),"utf-8");
				}
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		pagecount=10;//每页个数
		 totalpage=li.size();//总条数
		 totalrow=(totalpage+pagecount-1)/pagecount;//总页数
		if(currpage<1){
			currpage=1;
		}
		if(currpage>=totalrow){
			currpage=totalrow;
		}
		List list=imp.objectimglist(kecheng,ename,classname,currpage-1, pagecount);
		setValToRequest("list", list);
		setValToRequest("lil", lil);
		setValToRequest("l", l);
		setValToRequest("lii", lii);
		setValToRequest("kecheng", kecheng);
		setValToRequest("ename", ename);
		setValToRequest("classname", classname);
		return "toobjectimglist";
	}
	
}
