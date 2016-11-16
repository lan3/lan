package com.ht.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.ht.service.dept.WorkDoingService;
import com.ht.vo.msg.Msg;

public class mainaction extends BaseAction{
	private List list;
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	private List emplist;
	public List getEmplist() {
		return emplist;
	}
	public void setEmplist(List emplist) {
		this.emplist = emplist;
	}
	public String buty(){
		list=wdolist();
	    emplist= empfind();
		return "success";
	}
	public String msg(){
		list=msglist();
		return "success";
	}
	private int leg1;
	private int leg2;
	private int leg3;
	private int leg4;
	private int leg5;
	public int getLeg1() {
		return leg1;
	}
	public void setLeg1(int leg1) {
		this.leg1 = leg1;
	}
	public int getLeg2() {
		return leg2;
	}
	public void setLeg2(int leg2) {
		this.leg2 = leg2;
	}
	public int getLeg3() {
		return leg3;
	}
	public void setLeg3(int leg3) {
		this.leg3 = leg3;
	}
	public int getLeg4() {
		return leg4;
	}
	public void setLeg4(int leg4) {
		this.leg4 = leg4;
	}
	public int getLeg5() {
		return leg5;
	}
	public void setLeg5(int leg5) {
		this.leg5 = leg5;
	}
	public String daiban(){
		Object name=ServletActionContext.getRequest().getSession().getAttribute("name");
		if(name!=null){
			leg1=wchecksel(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"")).size();
			leg2=listbystatus(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"")).size();
			leg3=overtimesel(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"")).size();
			leg4=stulevelist(ServletActionContext.getRequest().getSession().getAttribute("name").toString()).size();
			leg5=compulist(ServletActionContext.getRequest().getSession().getAttribute("name").toString()).size();
		}
		return "success";
	}
	public String phon(){
		list=empphon();
		return "success";
	}
	private int count1;
	private int count2;
	private int count3;
	private int count4;
	public String tongji(){
		count1=empcount();
		count2=stucount();
		count3=classcount();
		count4=objectcount();
		return "success";
	}
	public int getCount1() {
		return count1;
	}
	public void setCount1(int count1) {
		this.count1 = count1;
	}
	public int getCount2() {
		return count2;
	}
	public void setCount2(int count2) {
		this.count2 = count2;
	}
	public int getCount3() {
		return count3;
	}
	public void setCount3(int count3) {
		this.count3 = count3;
	}
	public int getCount4() {
		return count4;
	}
	public void setCount4(int count4) {
		this.count4 = count4;
	}
	
	public String stumsg(){
		list=mlist();
		
		return "success";
	} 
}
