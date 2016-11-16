package com.ht.action.dept;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;



import com.ht.action.BaseAction;
import com.ht.service.dept.DutyService;
import com.ht.vo.emp.Dept;
import com.ht.vo.emp.Duty;

public class DutyAction extends BaseAction{
	private Duty duty;
	private int empid;
	private String t1;
	private String t2;
	private int currpage=1;
	private int pagecount=8;
	private int totalpage=0;
	private int totalrow=0;
	DutyService ds=(DutyService) getService("dutyservice");
	public String list(){  //列表
		totalrow= ds.dutylist().size();
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
		List list= ds.dutylists(currpage,pagecount);
	    List emplist= empfind();
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		setValToRequest("emplist", emplist);
		return "tolist";
	}
	public String sellist(){  //查看列表
		List list= dutylist();
	    List emplist= empfind();
		setValToRequest("list", list);
		setValToRequest("emplist", emplist);
		return "tosellist";
	}
	public String seldata1(){
		List emplist= empfind();
		setValToRequest("emplist", emplist);
		List list= dutylistbyid(empid);
		setValToRequest("list", list);
		return "tosellist";
	} 
	public String seldata2(){
		List emplist= empfind();
		setValToRequest("emplist", emplist);
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
		List list= dutybydate(t1, t2);
		setValToRequest("list", list);
		return "tosellist";
	} 
	
	public String seldata3(){
		List emplist= empfind();
		setValToRequest("emplist", emplist);
		List list= dutybydate(t1, t2);
		setValToRequest("list", list);
		return "tosellist";
	}
	
	public String add(){   //添加
		ds.addduty(duty);
		return list();
	}
	public String del(){  //删除
		Duty d= ds.getduty(duty.getDid());
		ds.delduty(d);
		return list();
	}
	public String toupd(){
		Duty d= ds.getduty(duty.getDid());
		List list= ds.selemplist();
		setValToRequest("list", list);
		setValToRequest("duty", d);
		return "toupd";
	}
	public String upd(){
		ds.updduty(duty);
		return list();
	}
	
	public String test(){
		String str=null;
		try {
			str = new String(ServletActionContext.getRequest().getParameter("element").getBytes("iso-8859-1"),"utf-8");
			System.out.println(str);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String strs[]= str.split(",");
		int num=strs.length/6;   		//对象个数
		System.out.println("num :"+num);
		Duty[] d=new Duty[num];
		for (int i = 0; i < strs.length; i++) {
			if(i%6==0){
				int j=i/6;
				Duty de=new Duty();
				System.out.println("j :"+j);
				de.setDid(Integer.parseInt(strs[0+(j*6)]));
				List l1= enamefind((strs[1+(j*6)]));
				Map m=(Map)l1.get(0);
				de.setEid(Integer.parseInt(m.get("EID")+""));  //转id
				try {
					de.setEdatetime( new SimpleDateFormat("yyyy-MM-dd").parse((strs[2+(j*6)])));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				de.setDtime((strs[3+(j*6)]));
				de.setDrange((strs[4+(j*6)]));
				de.setDescs((strs[5+(j*6)]));
				d[j]=de;
				ds.updduty(d[j]);
			}
		}
		return list();
	}
	// 多个删除del
	public String dels(){
		String str=ServletActionContext.getRequest().getParameter("dids");
		String strs[]=str.split(",");
		for (int i = 0; i < strs.length; i++) {
			Duty d=ds.getduty(Integer.parseInt(strs[i]+""));
			ds.delduty(d);
		}
		return list();
	}
	//add
	public String adds(){
		String str=null;
		try {
			str = new String(ServletActionContext.getRequest().getParameter("element").getBytes("iso-8859-1"),"utf-8");
			System.out.println(str);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String strs[]= str.split(",");
		Duty d=new Duty();
		List l1= enamefind((strs[0]));
		Map m=(Map)l1.get(0);
		 //转id
		d.setEid(Integer.parseInt(m.get("EID")+""));
		try {
			d.setEdatetime( new SimpleDateFormat("yyyy-MM-dd").parse(strs[1]));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		d.setDtime(strs[2]);
		d.setDrange(strs[3]);
		d.setDescs(strs[4]);
		ds.addduty(d);
		return list();
	}
	public String selemp(){
		List list= ds.selemplist();
		setValToRequest("list", list);
		return "toaddjsp";
	}
	public Duty getDuty() {
		return duty;
	}
	public void setDuty(Duty duty) {
		this.duty = duty;
	}
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
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
}
