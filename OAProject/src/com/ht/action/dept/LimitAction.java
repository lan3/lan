package com.ht.action.dept;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.vo.emp.Limit;

public class LimitAction extends BaseAction{
	private Limit limit;
	private int currpage=1;
	private int pagecount=8;
	private int totalpage=0;
	private int totalrow=0;
	public String list(){
		totalrow=selallemp().size();
		totalpage=(totalrow+pagecount-1)/pagecount;
		//获取页面传来的页码
		HttpServletRequest request= ServletActionContext.getRequest();
		String pages=request.getParameter("page");
		if(pages!=null&&!pages.equals("")){
		       currpage=Integer.parseInt(pages);
		}
		if(currpage<1){
		       currpage=1;
		}
		if(currpage>=totalpage){
		       currpage=totalpage;
		}  

		List list= selallemps(currpage,pagecount);
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "tolist";
	}
	public String add(){
		String limits[]=(String []) getValFromTable("qqq");
		System.out.println("eid "+limit.getEid());
		System.out.println("length :"+limits.length);
		delLimit(limit.getEid());  //先删除所有再新增
		for (int i = 0; i < limits.length; i++) {
			Limit li= new Limit();
			li.setEid(limit.getEid());
			li.setMid(limits[i]+"");
			addLimit(li);
		}
		return list();
	}
	public String upd(){
		System.out.println("limit: "+limit.getEid());
		List limits=new ArrayList();
		List list= selLimit(limit.getEid());
		for (int i = 0; i < list.size(); i++) {
			Map m=(Map) list.get(i);
			limits.add((String)m.get("MID"));
		}
		setValToRequest("limit", limits);
		setValToRequest("eid", limit.getEid());
		return "toupd";
	}
	
	public String limit(){
		//获取用户登录ID
		List li= selmid(Integer.parseInt(((Map)ServletActionContext.getRequest().getSession().getAttribute("id")).get("EID")+""));
		List list=new ArrayList();
		for (int i = 0; i < li.size(); i++) {
			Map m=(Map) li.get(i);
			list.add((String)m.get("MID"));
		}
		ServletActionContext.getRequest().getSession().setAttribute("limits",list);
		return "tomain";
	}
	
	public Limit getLimit() {
		return limit;
	}
	public void setLimit(Limit limit) {
		this.limit = limit;
	}

}
