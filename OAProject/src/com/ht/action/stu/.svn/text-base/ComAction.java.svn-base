package com.ht.action.stu;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.stu.ClassService;
import com.ht.service.stu.ComService;
import com.ht.vo.stu.Computers;

public class ComAction extends BaseAction{
	HttpServletRequest request=ServletActionContext.getRequest();
   ComService com= (ComService) getService("ComService"); 
   private String str;//获取当前页
	private int currpage=1;
	private int pagecount=5;
	private int totalRow=0;
	private int totalpage=0;
   
   //班级
	ClassService cl= (ClassService) getService("classService"); 
	private Computers c;
	//新增电脑领用信息
	public String add(){
		int eid= Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"");
 		System.out.println("eid的值是"+eid);
 		List list= stufind(eid);
 		Map m=(Map) list.get(0);
 		request.setAttribute("eid", eid);
 		//获取到登陆用户的name
 		c.setSids(m.get("SNAME")+"");
		c.setStarts("待提交");
		com.addCom(c);
		return teach("");
	}
	//查询所有班级
	public String cls(){
		
		List listclass=cl.queryClass();//班级
		this.setValToRequest("listclass", listclass);
		return "to_add";
	}
	
	//查找任课老师
	public String teach(String cid){
		int eid= Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"");
 		System.out.println("eid的值是"+eid);
 		List list= stufind(eid);
 		Map m=(Map) list.get(0);
 		request.setAttribute("eid", eid);
 		//获取到登陆用户的name
 		totalRow=com.Teachquery(m.get("SNAME")+"").size();
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
		List lists=com.computfy(m.get("SNAME")+"", currpage, pagecount);
		request.setAttribute("teach", lists);
		return "to_teach";
	}
	//点击了提交
	public String clq(){
		Computers cl= com.ById(c.getCoid());
		cl.setStarts("待审核");
		com.updStart(cl);
		String classid=request.getParameter("c.classid");
		try {
			classid=new String(classid.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List list=com.Teachquery(classid);
		request.setAttribute("teach", list);
		System.out.println("list的大小"+list.size());
		return teach(classid);
	}
	//老师审批
	public String empteach(){
		
		List list=Comlist(ServletActionContext.getRequest().getSession().getAttribute("name")+"");; 
		List listclass=cl.queryClass();//班级	
		List comlist=Comclass();
		this.setValToRequest("listclass", listclass);
		this.setValToRequest("teach", list);
		this.setValToRequest("com",comlist );
		return "to_sp";
	}
	//点击了同意
	public String cty(){
		String sids=request.getParameter("sids");
		String classid=request.getParameter("classid");
		String times=request.getParameter("times");
		String lconts=request.getParameter("lconts");
		String empteaches=request.getParameter("empteaches");
		String starts=request.getParameter("starts");
		
		 try {
			sids=new String(sids.getBytes("iso-8859-1"),"utf-8");
			classid=new String(classid.getBytes("iso-8859-1"),"utf-8");
			times=new String(times.getBytes("iso-8859-1"),"utf-8");
			lconts=new String(lconts.getBytes("iso-8859-1"),"utf-8");
			empteaches=new String(empteaches.getBytes("iso-8859-1"),"utf-8");
			starts=new String(starts.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(sids);
		Computers cl= com.ById(c.getCoid());
		cl.setStarts("审核中");
		
		cl.setEmpteach(empteaches);
		
		com.updStart(cl);
		return empteach();
	}
	//点击了不同意
	public String teachnoty(){
		Computers cl= com.ById(c.getCoid());
		cl.setStarts("审核失败");
		com.updStart(cl);
		return empteach();
	}
	
	
	//班主任审批
	public String empteaches(){
		List list=com.deptQuery(); 
		List listclass=cl.queryClass();//班级	
		this.setValToRequest("listclass", listclass);
		this.setValToRequest("teaches", list);
		System.out.println("list的大小"+list.size());
		return empteach();
	}
	//点击了同意
	public String empcty(){
		String sids=request.getParameter("sids");
		String classid=request.getParameter("classid");
		String times=request.getParameter("times");
		String empteaches=request.getParameter("empteaches");
		String lconts=request.getParameter("lconts");
		String ename=request.getParameter("ename");
		String starts=request.getParameter("starts");
		
		 try {
			sids=new String(sids.getBytes("iso-8859-1"),"utf-8");
			classid=new String(classid.getBytes("iso-8859-1"),"utf-8");
			times=new String(times.getBytes("iso-8859-1"),"utf-8");
			lconts=new String(lconts.getBytes("iso-8859-1"),"utf-8");
			starts=new String(starts.getBytes("iso-8859-1"),"utf-8");
			empteaches=new String(empteaches.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(sids);
		Computers cl= com.ById(c.getCoid());
		cl.setStarts("最后审核");
		
		cl.setEmpteach(empteaches);
		
		com.updStart(cl);
		return empteaches();
	}
	//点击了不同意
	public String teachesnoty(){
		Computers cl= com.ById(c.getCoid());
		cl.setStarts("审核失败");
		com.updStart(cl);
		return empteaches();
	}
	
	//后勤审批
	public String dept(){
		List list=com.teach(); 
		List listclass=cl.queryClass();//班级	
		this.setValToRequest("listclass", listclass);
		this.setValToRequest("dept", list);
		return empteach();
	}
	//点击了同意
	public String deptcty(){
		String sids=request.getParameter("sids");
		String classid=request.getParameter("classid");
		String times=request.getParameter("times");
		String lconts=request.getParameter("lconts");
		String starts=request.getParameter("starts");
		
		 try {
			sids=new String(sids.getBytes("iso-8859-1"),"utf-8");
			classid=new String(classid.getBytes("iso-8859-1"),"utf-8");
			times=new String(times.getBytes("iso-8859-1"),"utf-8");
			lconts=new String(lconts.getBytes("iso-8859-1"),"utf-8");
			starts=new String(starts.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
	
			e.printStackTrace();
		}
		System.out.println(sids);
		Computers cl= com.ById(c.getCoid());
		cl.setStarts("审核成功");
		
		com.updStart(cl);
		return dept();
	}
	//点击了不同意
	public String deptsnoty(){
		Computers cl= com.ById(c.getCoid());
		cl.setStarts("审核失败");
		com.updStart(cl);
		return dept();
	}
	//查询领用申请表
	public String mycomputes(){
		int eid= Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"");
 		System.out.println("eid的值是"+eid);
 		List list= stufind(eid);
 		Map m=(Map) list.get(0);
 		request.setAttribute("eid", eid);
 		//获取到登陆用户的name
 		totalRow=com.mycomput(m.get("SNAME")+"").size();
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
		List lists=com.computfy(m.get("SNAME")+"", currpage, pagecount);
 		request.setAttribute("mycom", lists);
		return "to_mycom";
	}
	//删除
	public String del(){
		Computers cl=com.ById(c.getCoid());
		com.del(cl);
		String classid=request.getParameter("s.classid");
		try {
			classid=new String(classid.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return teach(classid);
	}
	
//	//查找班主任
//	public String teaches(){
//		Computers cl= com.ById(c.getCoid());
//		cl.setStarts("待审核");
//		com.updStart(cl);
//		String classid=request.getParameter("c.classid");
//		try {
//			classid=new String(classid.getBytes("iso-8859-1"),"utf-8");
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		List list=com.TeachesQuery(classid);
//		request.setAttribute("teaches", list);
//		return "to_teaches";
//	}
//	//查找后勤部主任
//	public String dept(){
//		Computers cl= com.ById(c.getCoid());
//		cl.setStarts("审核中");
//		com.updStart(cl);
//		String classid=request.getParameter("c.classid");
//		try {
//			classid=new String(classid.getBytes("iso-8859-1"),"utf-8");
//		} catch (UnsupportedEncodingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		List list=com.deptQuery(classid);
//		request.setAttribute("comdept", list);
//		return "to_comdept";
//	}
//	//后勤部管理人审批
//	public String peat(){
//		
//		Computers cl= com.ById(c.getCoid());
//		cl.setStarts("审核中");
//		com.updStart(cl);
//		List list=com.deql();
//		request.setAttribute("peat", list);
//		return "to_emp";
//	}
//	
	
	public Computers getC() {
		return c;
	}
	public void setC(Computers c) {
		this.c = c;
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
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
}
