package com.ht.action.dept;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.dept.OverTimeService;
import com.ht.vo.emp.Overtime;

public class OverTimeAction extends BaseAction{
	private Overtime over;
	private String ename;
	private String empname;
	private int status;
	private int osid;
	private String t1;
	private String t2;
	private int peid;
	private int currpage=1;
	private int pagecount=8;
	private int totalpage=0;
	private int totalrow=0;
	OverTimeService os=(OverTimeService) getService("overservice");
	public String list(){
		totalrow=os.overtimelist().size();
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
		List list=os.overtimelists(currpage,pagecount);
		setValToRequest("list", list);

		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "tolist";
	}
	public String add(){
		List list= enamefind(empname);
		Map m=(Map) list.get(0);
		over.setEid(Integer.parseInt(m.get("EID")+""));
		over.setOstatus(0);
		os.addovertime(over);
		return list();
	}
	public String change(){   //点击提交事件
		Overtime o=os.getovertime(over.getOid());
		o.setOstatus(1); //将状态改为待审核
		os.updovertime(o);
		return list();
	}
	
	public String toupd(){
		Overtime o=os.getovertime(over.getOid());
		setValToRequest("over", o);
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List list= eidfind(o.getEid());
		Map m=(Map) list.get(0);
		setValToRequest("ename", m.get("ENAME"));
		return "toupd";
	}
	public String upd(){  //修改
 		List list= enamefind(ename);   //根据name 查询id   
		Map m=(Map) list.get(0);
		over.setEid(Integer.parseInt(m.get("EID")+""));  //设置eid
		over.setOstatus(0);//设置状态
		os.updovertime(over);
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		return list();
	}
	 
	public String shlist(){   //审批
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List list= overtimesel(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
		setValToRequest("list", list);   //审批列表
		
		return "toshlist";
	}
	
	public String shenhe(){
		
		System.out.println("osid: "+osid);
		Overtime o=os.getovertime(over.getOid());
		if(status==0){   //点击了不同意
			o.setOstatus(3); //审核失败
			os.updovertime(o);
			return shlist();
		}else if(status==1){ //点击了同意
			//改变状态   0 未提交  1 待审核  2 审核成功 3 审核失败
			if(osid!=0){    //有下一个审核人o.setOsid(osid);
				o.setOstatus(1);
				os.updovertime(o);
			}else{              //没有下一个审核人
				o.setOstatus(2);
				os.updovertime(o);
			}
			return shlist();
		}
		return null;
		
	}
	public String seldata(){
		List list= eidfind(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
		Map m=(Map) list.get(0);
		setValToRequest("empname", m.get("ENAME"));
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		return "toovertime";
	}
	public String seldata1(){
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List list= overbyeid(peid);
		setValToRequest("list", list);
		return "toshlist";
	}
	public String seldata2(){
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List list= overbytime(t1, t2);
		setValToRequest("list", list);
		return "toshlist";
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
		 List list= overbyweek(t1, t2);
		setValToRequest("list", list);
		return "toshlist";
	}
	public String seldata4(){
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List list= oversel();
		setValToRequest("list", list);
		return "toshlist";
	}
	public Overtime getOver() {
		return over;
	}
	public void setOver(Overtime over) {
		this.over = over;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
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
	public int getPeid() {
		return peid;
	}
	public void setPeid(int peid) {
		this.peid = peid;
	}
	public String getEmpname() {
		return empname;
	}
	public void setEmpname(String empname) {
		this.empname = empname;
	}
}
