package com.ht.action.dept;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.dept.WCheckDescService;
import com.ht.vo.emp.Workcheckdesc;

public class WcheckDescsAction extends BaseAction{
	private Workcheckdesc wdesc;
	private String ename;
	private int osid;
	private int status;
	private String t1;
	private String t2;
	private String empname;
	private List emplist; 
	private int peid;
	   
	WCheckDescService wds =(WCheckDescService) getService("wcheckdescservice");
	public String list(){
		int currpage=1;
		 int pagecount=8;
		 int totalpage=0;
		 int totalrow=0;
		totalrow=wds.list().size();
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
		List list= wds.lists(currpage,pagecount);
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "tolist";
	}
	public String add(){
		List list= enamefind(empname);
		Map m=(Map) list.get(0);
		wdesc.setEid(Integer.parseInt(m.get("EID")+""));
		wdesc.setDstatus(0);// 设置状态为 0 未提交 1 待审核  2 审核成功 3 审核失败  
		wds.adddesc(wdesc);
		return list();
	}
	public String change(){
		Workcheckdesc wc= wds.getWdesc(wdesc.getDeid()); 
		wc.setDstatus(1);  //设置待审核
		wds.upddesc(wc);
		return list();
	}
	public String del(){
		Workcheckdesc wck= wds.getWdesc(wdesc.getDeid());
		wds.deldesc(wck);
		return list();
	}
	public String toupd(){
		List list= eidfind(wdesc.getEid());   //获取员工姓名
		Map m=(Map) list.get(0);
		setValToRequest("ename", m.get("ENAME"));
		Workcheckdesc wck= wds.getWdesc(wdesc.getDeid());
		setValToRequest("wdesc", wck);
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		return "toupd";
	}
	public String upd(){
		List list= enamefind(ename);   //根据name 查询id   
		Map m=(Map) list.get(0);
		wdesc.setEid(Integer.parseInt(m.get("EID")+""));  //设置eid
		wdesc.setDstatus(0);
		wds.upddesc(wdesc);
		return list();
	}
	public String seldata(){
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		return "toadd";
	}
	public String shlist(){
		int currpage=1;
		 int pagecount=8;
		 int totalpage=0;
		 int totalrow=0;
		totalrow=wchecksel(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"")).size();
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
		List list= wchecksels(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""),currpage,pagecount);
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "toshlist";
	}
	public  String shenhe(){
		System.out.println("jinlsi .....");
		System.out.println("odis +"+ osid);
		Workcheckdesc wc=wds.getWdesc(wdesc.getDeid());
		if(status==0){ //点击了不同意
			wc.setDstatus(3);
			wds.upddesc(wc);
			return shlist();
		}else if(status==1){  //点击了同意
			if(osid!=0){ //有下一审核人
				wc.setDstatus(1);
				wc.setDup(osid);
				wds.upddesc(wc);
			}else{
				wc.setDstatus(2);
				wds.upddesc(wc);
			}
			return shlist();
		}
		return null;
	}
	
	public String json(){
		emplist=empfind(); //员工列表
		return "success";
	}
	public String seldata1(){
		int currpage=1;
		 int pagecount=8;
		 int totalpage=0;
		 int totalrow=0;
		totalrow=kaobyeid().size();
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
		List list= kaobyeids(currpage,pagecount);
		setValToRequest("list", list);   //查看已审批列表
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "toshlist1";
	}
	public String seldata2(){
		int currpage=1;
		 int pagecount=8;
		 int totalpage=0;
		 int totalrow=0;
		totalrow=kaobytime(t1,t2).size();
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
		List list= kaobytimes(t1, t2,currpage,pagecount);
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "toshlist2";
	}
	public String seldata3(){
		int currpage=1;
		 int pagecount=8;
		 int totalpage=0;
		 int totalrow=0;
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
		totalrow=kaobyweek(t1, t2).size();
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
		 List list= kaobyweeks(t1, t2,currpage,pagecount);
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "toshlist3";
	}
	public String seldata4(){
		int currpage=1;
		 int pagecount=8;
		 int totalpage=0;
		 int totalrow=0;
		totalrow=kaoqinlist(peid).size();
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
		List list= kaoqinlists(peid,currpage,pagecount);
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "toshlist4";
	}
	public Workcheckdesc getWdesc() {
		return wdesc;
	}
	public void setWdesc(Workcheckdesc wdesc) {
		this.wdesc = wdesc;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public int getOsid() {
		return osid;
	}
	public void setOsid(int osid) {
		this.osid = osid;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
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
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
	public List getEmplist() {
		return emplist;
	}
	public void setEmplist(List emplist) {
		this.emplist = emplist;
	}
	public int getPeid() {
		return peid;
	}
	public void setPeid(int peid) {
		this.peid = peid;
	}
}
