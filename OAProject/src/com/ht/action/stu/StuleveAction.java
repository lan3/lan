package com.ht.action.stu;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.stu.ClassService;
import com.ht.service.stu.StuleveService;
import com.ht.vo.stu.Stuleve;

public class StuleveAction extends BaseAction{
	HttpServletRequest request=ServletActionContext.getRequest();
	//请假
	 StuleveService leve= (StuleveService) getService("LeveService");
	//班级
	ClassService cl= (ClassService) getService("classService"); 
	private String str;//获取当前页
	private int currpage=1;
	private int pagecount=5;
	private int totalRow=0;
	private int totalpage=0;
	 
	 private Stuleve s;
	//查询所有班级
	public String cls(){
		List listclass=cl.queryClass();//班级
		this.setValToRequest("listclass", listclass);
		return "to_add";
	}
	public String add(){
		
		int eid= Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"");
 		System.out.println("eid的值是"+eid);
 		List list= stufind(eid);
 		Map m=(Map) list.get(0);
 		request.setAttribute("eid", eid);
 		//获取到登陆用户的name
 		s.setSid(m.get("SNAME")+"");
		s.setStarts("待提交");
		leve.addleve(s);
		return levequery("");
	}
	public String levequery(String cid){
		int eid= Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"");
 		System.out.println("eid的值是"+eid);
 		List list= stufind(eid);
 		Map m=(Map) list.get(0);
 		request.setAttribute("eid", eid);
 		totalRow=leve.query(m.get("SNAME")+"").size();
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
		List lists=leve.levefy(m.get("SNAME")+"", currpage, pagecount);
		request.setAttribute("list", lists);
		this.setValToRequest("currpage", currpage);
		this.setValToRequest("pagecount", pagecount);
		this.setValToRequest("totalRow", totalRow);
		this.setValToRequest("totalpage", totalpage);
		return "to_list";
	}
	//点击了提交
	public String tijiao(){
		Stuleve stu= leve.Byid(s.getLeveid());
		stu.setStarts("待审核");
		leve.update(stu);
		String classid=request.getParameter("s.classid");
		try {
			classid=new String(classid.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return levequery(classid);
	}	
	//老师审批
	public String teachty(){
 		List lists= stuleavelist(ServletActionContext.getRequest().getSession().getAttribute("name")+"");
 	
 			List classes=listclasses();
 			request.setAttribute("clas", classes);
 			request.setAttribute("names",lists);
 		
		request.setAttribute("teach", lists);
		
		return "to_teach";
	}
	//点击了同意
	public String cty(){
	
		String sid=request.getParameter("sid");
		String classid=request.getParameter("classid");
		String startdate=request.getParameter("startdate");
		String endtime=request.getParameter("endtime");
		String day=request.getParameter("day");
		String empteach=request.getParameter("empteach");
		String lcont=request.getParameter("lcont");
		String starts=request.getParameter("starts");
		try {
			sid= new String(sid.getBytes("iso-8859-1"),"utf-8");
			classid= new String(classid.getBytes("iso-8859-1"),"utf-8");
			startdate=new String(startdate.getBytes("iso-8859-1"),"utf-8");
			endtime=new String(endtime.getBytes("iso-8859-1"),"utf-8");
			day=new String(day.getBytes("iso-8859-1"),"utf-8");
			empteach=new String(empteach.getBytes("iso-8859-1"),"utf-8");
			lcont=new String(lcont.getBytes("iso-8859-1"),"utf-8");
			starts= new String(starts.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Stuleve stu= leve.Byid(s.getLeveid());
		stu.setStarts("审核中");
		stu.setEmpteach(empteach);
		leve.update(stu);
		
		return teachty();
	}
	//点击了不同意
	public String teachnty(){
		Stuleve stu= leve.Byid(s.getLeveid());
		stu.setStarts("审核失败");
		leve.update(stu);
		return teachty();
	}
	//班主任审批
	public String teaches(){
		List list=leve.teaches();
		request.setAttribute("teaches", list);
		return teachty();
	}
	//点击了同意
	public String teachesty(){

		String sid=request.getParameter("sid");
		String classid=request.getParameter("classid");
		String startdate=request.getParameter("startdate");
		String endtime=request.getParameter("endtime");
		String day=request.getParameter("day");
		String empteach=request.getParameter("empteach");
		String lcont=request.getParameter("lcont");
		String starts=request.getParameter("starts");
		try {
			sid= new String(sid.getBytes("iso-8859-1"),"utf-8");
			classid= new String(classid.getBytes("iso-8859-1"),"utf-8");
			startdate=new String(startdate.getBytes("iso-8859-1"),"utf-8");
			endtime=new String(endtime.getBytes("iso-8859-1"),"utf-8");
			day=new String(day.getBytes("iso-8859-1"),"utf-8");
			empteach=new String(empteach.getBytes("iso-8859-1"),"utf-8");
			lcont=new String(lcont.getBytes("iso-8859-1"),"utf-8");
			starts= new String(starts.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int days=Integer.parseInt(day);
		if(days<=1){
			Stuleve stu= leve.Byid(s.getLeveid());
			stu.setStarts("审核成功");
			stu.setEmpteach(empteach);
			leve.update(stu);
		}else{
			Stuleve stu= leve.Byid(s.getLeveid());
			stu.setStarts("最终审核");
			stu.setEmpteach(empteach);
			leve.update(stu);
		}
		return teaches();
	}
	//点击了不同意
	public String teachesn(){
		Stuleve stu= leve.Byid(s.getLeveid());
		stu.setStarts("审核失败");
		leve.update(stu);
		
		return teaches();
	}
	
	//行政部审批
	public String depty(){
		List list=leve.dept();
		request.setAttribute("dept",list);
		return "to_dept";
	}
	//点击了同意
	public String decty(){
		String sid=request.getParameter("sid");
		String classid=request.getParameter("classid");
		String startdate=request.getParameter("startdate");
		String endtime=request.getParameter("endtime");
		String day=request.getParameter("day");
		String lcont=request.getParameter("lcont");
		String starts=request.getParameter("starts");
		try {
			sid= new String(sid.getBytes("iso-8859-1"),"utf-8");
			classid= new String(classid.getBytes("iso-8859-1"),"utf-8");
			startdate=new String(startdate.getBytes("iso-8859-1"),"utf-8");
			endtime=new String(endtime.getBytes("iso-8859-1"),"utf-8");
			day=new String(day.getBytes("iso-8859-1"),"utf-8");
			lcont=new String(lcont.getBytes("iso-8859-1"),"utf-8");
			starts= new String(starts.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Stuleve stu= leve.Byid(s.getLeveid());
		stu.setStarts("审核成功");
		leve.update(stu);
		
		return teachty();
	}
	//点击了不同意
	public String deptnty(){
		Stuleve stu= leve.Byid(s.getLeveid());
		stu.setStarts("审核失败");
		leve.update(stu);
		
		return depty();
	}
	
	
	//删除
	public String del(){
		Stuleve stu= leve.Byid(s.getLeveid());
		leve.del(stu);
		String classid=request.getParameter("s.classid");
		try {
			classid=new String(classid.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return levequery(classid);
	}
	//查看自己的请假条
	public String myleve(){
		int eid= Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"");
 		System.out.println("eid的值是"+eid);
 		List list= stufind(eid);
 		Map m=(Map) list.get(0);
 		request.setAttribute("eid", eid);
 		//获取到登陆用户的name
		totalRow=leve.myleve(m.get("SNAME")+"").size();
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
		List lists=leve.levefy(m.get("SNAME")+"", currpage, pagecount);
		request.setAttribute("myleve", lists);
		return "to_myleve";
	}
	
	public Stuleve getS() {
		return s;
	}
	public void setS(Stuleve s) {
		this.s = s;
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
