package com.ht.action.dept;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.dept.EmpService;
import com.ht.service.dept.ReportService;
import com.ht.vo.emp.Dept;
import com.ht.vo.emp.Report;

public class ReportAction extends BaseAction{
	private Report report;
	private Object eid;
	private String t1;
	private String t2;
	private int name;
	private String filename;
	private String ename;
	private String str;
	private boolean bln=false;
	private int currpage=1;
	private int pagecount=8;
	private int totalpage=0;
	private int totalrow=0;
	EmpService es=(EmpService) getService("empservice");
	ReportService rs=(ReportService) getService("reportservice");
	public String list(){
		totalrow=rs.selelist().size();
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
		List list= rs.selelist(currpage, pagecount);
		List emplist=empfind();
		setValToRequest("emplist", emplist);
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "toreportlist";
	}
	
	public String sellist(){
		totalrow=rs.selelist().size();
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
		setValToRequest("emplist", emplist);
		List list= rs.selelist(currpage,pagecount);
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "toselreportlist";
	}
	public String check(){
		List list= seldate();
		for (int i = 0; i < list.size(); i++) {
			Map m=(Map) list.get(i);
			if(str.equals(m.get("RDATE")+"")){
				bln=true;
			}
		}
		return "success";
	}
	//添加
	public String add(){
		List list=rs.seleid(ename); //根据登录用户获取id
		for (int i = 0; i < list.size(); i++) {
			Map m=(HashMap)list.get(0);
			eid=m.get("EID");
		}
		report.setEid(Integer.parseInt(eid+""));
		rs.addreport(report);
		return null;
	}
	public String del(){
		Report r= rs.getreport(report.getRid());
		rs.delreport(r);
		return list();
	}
	public String toupd(){
		List list= es.selemp(); //获取员工
		Report r= rs.getreport(report.getRid());
		List rlist= es.selename(r.getEid());
		Map m=(Map)rlist.get(0); //获取员工名称
		setValToRequest("report", r);
		setValToRequest("list", list);
		setValToRequest("sname", m.get("ENAME"));
		System.out.println( m.get("ENAME"));
		return "toreportupd";
	}
	public String upd(){
		HttpServletRequest request=ServletActionContext.getRequest(); //根据显示的员工姓名查找eid
		List list=rs.seleid(request.getParameter("reportperson"));
		for (int i = 0; i < list.size(); i++) {
			Map m=(HashMap)list.get(0);
			eid=m.get("EID");
		}
		report.setEid(Integer.parseInt(eid+""));
		rs.updreport(report);
		return list();
	}
	//查找员工  显示在添加页面
	public String selemps(){ 
		List list= es.selemp();
		setValToRequest("list", list);
		return "toreportadd";
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
		int num=strs.length/4;   		//对象个数
		System.out.println("num :"+num);
		Report[] d=new Report[num];
		for (int i = 0; i < strs.length; i++) {
			if(i%4==0){
				int j=i/4;
				Report de=new Report();
				System.out.println("j :"+j);
				de.setRid(Integer.parseInt(strs[0+(j*4)]));
				System.out.println(strs[1+(j*4)]);
				List l1= enamefind(strs[1+(j*4)]);
				Map m=(Map)l1.get(0);
				de.setEid(Integer.parseInt(m.get("EID")+""));  //转id
				try {
					de.setRdate( new SimpleDateFormat("yyyy-MM-dd").parse(strs[2+(j*4)]));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				de.setRsummary(strs[3+(j*4)]);
				d[j]=de;
				rs.updreport(d[j]);
			}
		}
		return list();
	}
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
		Report d=new Report();
		List l1= enamefind((strs[0]));
		Map m=(Map)l1.get(0);
		d.setEid(Integer.parseInt(m.get("EID")+""));  //转id
		try {
			d.setRdate( new SimpleDateFormat("yyyy-MM-dd").parse(strs[1]));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		d.setRsummary(strs[2]);
		rs.addreport(d);
		return list();
	}
	
	// 多个删除del
	public String dels(){
		String str=ServletActionContext.getRequest().getParameter("dids");
		String strs[]=str.split(",");
		for (int i = 0; i < strs.length; i++) {
			Report r=rs.getreport(Integer.parseInt(strs[i]+""));
			rs.delreport(r);
		}
		return list();
	}
	
	public String seldata1(){    //查询一
		totalrow=selbydate(t1, t2).size();
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
		setValToRequest("emplist", emplist);
		List list= selbydates(t1, t2,currpage,pagecount);
		System.out.println(list.size());
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "tolist";
	}
	public String seldata2(){    //查询2
		totalrow=selbyname(name).size();
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
		setValToRequest("emplist", emplist);
		List list= selbynames(name,currpage,pagecount);
		System.out.println(list.size());
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "tolist";
	}
	public String seldata3(){    //查询3
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
		totalrow=selbyweek(t1, t2).size();
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
		setValToRequest("emplist", emplist);
		
		
		List list= selbyweeks(t1, t2,currpage,pagecount);
		System.out.println(list.size());
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "tolist";
	}
	
	//日志导出
	public String excel(){
		try {
			filename=new String(filename.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		File fileWrite = new File("C:\\Users\\Administrator\\Desktop\\"+filename+".xls");
		WritableWorkbook wwb=null;
		WritableSheet ws = null;
		
		// **************往工作表中添加数据*****************
		String str=null;
		try {
			// 创建Excel工作表 指定名称和位置
			wwb = Workbook.createWorkbook(fileWrite);
			ws = wwb.createSheet("Test Sheet 1", 0);
			str= new String(ServletActionContext.getRequest().getParameter("data").getBytes("iso-8859-1"),"utf-8");
			String strs[]= str.split(","); //分割成数组
			int cell=4;// 4列
			int rows=strs.length/4; //行
			for (int i = 0; i < rows; i++) {
				for (int j = 0; j < cell; j++) {
					Label label = new Label(j, i, strs[i*cell+j]);
					ws.addCell(label);
				}
			}
			wwb.write();
			wwb.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sellist();
	} 
	
	
	public Report getReport() {
		return report;
	}
	public void setReport(Report report) {
		this.report = report;
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

	public int getName() {
		return name;
	}

	public void setName(int name) {
		this.name = name;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	public boolean isBln() {
		return bln;
	}

	public void setBln(boolean bln) {
		this.bln = bln;
	}

}
