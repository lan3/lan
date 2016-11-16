package com.ht.action.stu;

import java.util.List;

import com.ht.action.BaseAction;
import com.ht.service.stu.ClassService;
import com.ht.vo.stu.Classes;

public class classesAction extends BaseAction{
	
	ClassService cl= (ClassService) getService("classService"); 
	private String str;//获取当前页
	private int currpage=1;
	private int pagecount=5;
	private int totalRow=0;
	private int totalpage=0;
	
	private Classes c;
	private List list;
	public String add(){
		cl.addClass(c);
		System.out.println(c.getEmpteach());
		System.out.println(c.getClassname());
		return list();
	}
	//查询员工
	public String emp(){
		List list=cl.listemp();
		this.setValToRequest("emp", list);
		return "to_add";
	}
	public String list(){
		System.out.println("进来了");
		totalRow=cl.queryClass().size();
		totalpage=(totalRow+pagecount-1)/pagecount;
		if(str!=null&&!"".equals(str)){
			currpage=Integer.parseInt(str);
		}
		if(currpage>totalpage){
			currpage=totalpage;
		}
		if(currpage<1){
			currpage=1;
		}
		
		list=cl.currfy(currpage, pagecount);
		this.setValToRequest("list", list);
		this.setValToRequest("currpage", currpage);
		this.setValToRequest("pagecount", pagecount);
		this.setValToRequest("totalRow", totalRow);
		this.setValToRequest("totalpage", totalpage);
		return "to_classes";
	}
	public String del(){
		System.out.println("进来了");
		Classes cc=cl.Byid(c.getClassid());
		System.out.println(cc.getClassname());
		cl.delclass(cc);
		return list();
	}
	public String toupd(){
		Classes id=cl.Byid(c.getClassid());
		List list=cl.listemp();//查询老师
		this.setValToRequest("emp", list);
		this.setValToRequest("cc", id);
		return "to_update";
	}
	
	public String update(){
		System.out.println("===========");
		System.out.println("c.getWname()        "+c.getClassname());
		System.out.println("c.getEmpteach()        "+c.getEmpteach());
		cl.update(c);
		return list();
	}
	
	
	
	public Classes getC() {
		return c;
	}
	public void setC(Classes c) {
		this.c = c;
	}
	public int getCurrpage() {
		return currpage;
	}
	public void setCurrpage(int currpage) {
		this.currpage = currpage;
	}
	public int getPagecount() {
		return pagecount;
	}
	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}
	public int getTotalRow() {
		return totalRow;
	}
	public void setTotalRow(int totalRow) {
		this.totalRow = totalRow;
	}
	public int getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}
}
