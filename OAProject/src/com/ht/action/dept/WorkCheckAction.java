package com.ht.action.dept;

import java.util.Date;
import java.util.List;

import com.ht.action.BaseAction;
import com.ht.service.dept.WCheckService;
import com.ht.vo.emp.Workcheck;

public class WorkCheckAction extends BaseAction{
	private String nowtime;
	private Workcheck wc;
	WCheckService ws=(WCheckService) getService("wcheckservice");
	
	public String list(){
		List list= ws.checklist();
		System.out.println("size:"+list.size());
		setValToRequest("list", list);
		return "tochecklist";
	}
	public String add(){
		wc.setWdate(new Date().toLocaleString().substring(0, 9));
		ws.addcheck(wc);
		return list();
	}
	public String del(){
		Workcheck w= ws.getcheck(wc.getWid());
		ws.delcheck(w);
		return list();
	}
	
	public String check(){
		Date now=new Date();     //获取当前时间
		String str= now.toLocaleString();
		nowtime= str.substring(10, str.length());
		return "success";
	}
	
	
	public String getNowtime() {
		return nowtime;
	}
	public void setNowtime(String nowtime) {
		this.nowtime = nowtime;
	}
	public Workcheck getWc() {
		return wc;
	}
	public void setWc(Workcheck wc) {
		this.wc = wc;
	}
}
