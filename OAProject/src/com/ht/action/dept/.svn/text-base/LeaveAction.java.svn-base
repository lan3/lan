package com.ht.action.dept;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.dept.LeaveService;
import com.ht.vo.emp.Leave;
import com.sun.org.apache.bcel.internal.generic.LSTORE;

public class LeaveAction extends BaseAction{
	//请假
	private Leave leave;
	private int status;
	private int osid;
	private int peid;
	private String t1;
	private String t2;
	private String ename;
	private int currpage=1;
	private int pagecount=8;
	private int totalpage=0;
	private int totalrow=0;
	LeaveService ls=(LeaveService) getService("leaveservice");
	public String list(){
		totalrow=ls.leavelist().size();
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
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List list=ls.leavelists(currpage,pagecount);
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "tolist";
	}
	public String shlist(){
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List list=listbystatus(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
		setValToRequest("list", list);
		return "tosellist";
	}
	public String seldata(){    //去添加
		List list= eidfind(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
		Map m=(Map) list.get(0);
		setValToRequest("ename",m.get("ENAME")) ;
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		return "toleave";
	}
	
	public String shenhe(){  //审核
		Leave l=ls.getleave(leave.getLid());  
		if(status==1){ 					 //点击了同意
			if(osid!=0){//有下一个审核人
				l.setSid(osid);
				l.setLstatus("待审核");
				ls.updleave(l);
			}else{
				l.setLstatus("审核成功");
				ls.updleave(l);
			}
			return shlist();
		}else if(status==0){ 			 //点击了不同意
			l.setLstatus("审核失败");
			ls.updleave(l);
			return shlist();
		}
		
		return null;
	}
	
	public String shupd(){   //审核修改
		ls.updleave(leave); 
		return shlist();
	}
	public String seldata1(){
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List list= leavebyeid(peid);
		setValToRequest("list", list);
		return "tosellist";
	}
	public String seldata2(){
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List list= leavebytime(t1, t2);
		setValToRequest("list", list);
		return "tosellist";
	}
	public String seldata3(){
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 Calendar cal = Calendar.getInstance();
		 System.out.println("今天的日期: " + sdf.format(cal.getTime()));

		 int day_of_week = cal.get(Calendar.DAY_OF_WEEK) - 2;
		 cal.add(Calendar.DATE, -day_of_week);
		 String t1=sdf.format(cal.getTime());
		 System.out.println("本周第一天: " +sdf.format(cal.getTime()));

		 cal.add(Calendar.DATE, 6);
		 System.out.println("本周末: " + sdf.format(cal.getTime()));
		 
		 String t2=sdf.format(cal.getTime());
		 List list= leavebyweek(t1, t2);
		setValToRequest("list", list);
		return "tosellist";
	}
	public String seldata4(){
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List list= leavesel();
		setValToRequest("list", list);
		return "tosellist";
	}
	public String add(){
		List list= enamefind(ename);
		Map m=(Map) list.get(0);
		leave.setEid(Integer.parseInt(m.get("EID")+""));
		leave.setLstatus("待提交");
		ls.addleave(leave);
		return list();
	}
	public String change(){   //点击提交
		Leave l=ls.getleave(leave.getLid());
		l.setLstatus("待审核");
		ls.updleave(l);
		return list();
	}
	public String del(){ //删除
		Leave l=ls.getleave(leave.getLid());
		ls.delleave(l);
		return list();
	}
	public String toupd(){   //去修改
		Leave l=ls.getleave(leave.getLid());
		setValToRequest("leave", l);
		return "toupd";
	}
	public String upd(){  //修改
		if(leave.getLstatus()!=null&&!leave.getLstatus().equals("")){
			if(leave.getLstatus().equals("提交")){  //提交的话  跳转到待审核页面
				leave.setLstatus("待审核");
			}else if(leave.getLstatus().equals("不提交")){ 
				leave.setLstatus("待提交");
			}
		}
		ls.updleave(leave);
		return list();
	}
	public Leave getLeave() {
		return leave;
	}
	public void setLeave(Leave leave) {
		this.leave = leave;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getOsid() {
		return osid;
	}
	public void setOsid(int osid) {
		this.osid = osid;
	}
	public int getPeid() {
		return peid;
	}
	public void setPeid(int peid) {
		this.peid = peid;
	}
	public String getT1() {
		return t1;
	}
	public void setT1(String t1) {
		this.t1 = t1;
	}
	public String getT2() {
		return t2;
	}
	public void setT2(String t2) {
		this.t2 = t2;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
}
