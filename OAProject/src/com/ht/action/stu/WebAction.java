package com.ht.action.stu;

import java.util.List;
import java.util.Map;

import javax.servlet.Servlet;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.edu.eduemp;
import com.ht.service.stu.ClassService;
import com.ht.service.stu.WebService;
import com.ht.vo.stu.Scoreweb;
import com.ht.vo.stu.Stuscore;

public class WebAction extends BaseAction{
	HttpServletRequest request=ServletActionContext.getRequest();
	 WebService web= (WebService) getService("webService"); 
	 //班级
	 ClassService cl= (ClassService) getService("classService"); 
	 //课程
	 eduemp imp=(eduemp) getService("eduservice");
	 
	 private Scoreweb w;//主表
	 private Stuscore s;//子表
	 
	 private String t1[];
	 private Integer s1[];
	 private Integer s2[];
	 private Integer s3[];
	 private Integer s4[];
	 private Integer s5[];
	 private Integer s6[];
	 private Integer t8[];
	 private String t9[];
	 
	 	private String str;//获取当前页
		private  int currpage=1;
		private  int pagecount=3;
		private int totalRow=0;
		private int totalpage=0;
	
	//主表添加
	public String add(){
		int eid= Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"");
 		System.out.println("eid的值是"+eid);
 		List list= eidfind(eid);
 		Map m=(Map) list.get(0);
 		request.setAttribute("eid", eid);
 		//获取到登陆用户的name
 		w.setPin(m.get("ENAME")+"");
		web.addweb(w);
		return list();
	}
	public String stucl(){
		List listobj=imp.objectfindall();//查询课程
		List listclass=cl.queryClass();//班级
		this.setValToRequest("listclass", listclass);
		this.setValToRequest("listobj", listobj);
		return "to_add";
	}
	//查询主表数据
	public String list(){
		HttpServletRequest request=ServletActionContext.getRequest();
		//获取页面传来的参数
		String classid= request.getParameter("w.classid");
		List list=web.weblist();
		List clstu=web.Bystu(classid);//获取到传来的参数，根据班级查询学生
		request.setAttribute("clstu", clstu);
		this.setValToRequest("web", list);
		return "to_list";
	}
	public String addstu(){
		System.out.println("进来了");
		System.out.println("啊更合适的卡桑德拉"+t1[0]);
		for (int i = 0; i < t1.length; i++) {
			
			Stuscore stu=new Stuscore();
	//添加子表的数据
			stu.setSid((t1.clone()[i]));
			stu.setWgn((s1.clone()[i]));
			stu.setWjs((s2.clone()[i]));
			stu.setWmg((s3.clone()[i]));
			stu.setWff((s4.clone()[i]));
			stu.setWyuyan((s5.clone()[i]));
			stu.setWhd((s6.clone()[i]));
			stu.setScore((t8.clone()[i]));
			stu.setBeizhu((t9.clone()[i]));
			System.out.println();
			
			web.addstucore(stu);
			System.out.println(stu.getBeizhu());
		}
		
		return weblist();
	}
	public String weblist(){
		HttpServletRequest request= ServletActionContext.getRequest();
	
		
		if(str!=null&&!"".equals(str)){
			currpage=Integer.parseInt(str);
		}
		totalRow=web.Byliststu().size();
		totalpage=(totalRow+pagecount-1)/pagecount;
		
		
		if(currpage>totalpage){
			currpage=totalpage;
		}
		if(currpage<1){
			currpage=1;
		}
		List list=web.webBylist(currpage, pagecount);
		this.setValToRequest("web", list);
		request.setAttribute("currpage", currpage);
		request.setAttribute("pagecount", pagecount);
		request.setAttribute("totalRow",totalRow );
		request.setAttribute("totalpage",totalpage );
		return "to_web";
	}
	//删除
	public String del(){
		Stuscore stuid=web.Byid(s.getStuid());
		web.delstucore(stuid);
		return weblist();
	}
	//根据学生姓名查找
	public String stuweb(){
		HttpServletRequest request=ServletActionContext.getRequest();
		//获取页面的参数
		String uname= request.getParameter("uname");
		List list=web.stuweb(uname);
		this.setValToRequest("stu",list);
		return "to_stu";
	}
	
	
	public Scoreweb getW() {
		return w;
	}
	public void setW(Scoreweb w) {
		this.w = w;
	}
	public String[] getT1() {
		return t1;
	}
	public void setT1(String[] t1) {
		this.t1 = t1;
	}
	public Integer[] getS1() {
		return s1;
	}
	public void setS1(Integer[] s1) {
		this.s1 = s1;
	}
	public Integer[] getS2() {
		return s2;
	}
	public void setS2(Integer[] s2) {
		this.s2 = s2;
	}
	public Integer[] getS3() {
		return s3;
	}
	public void setS3(Integer[] s3) {
		this.s3 = s3;
	}
	public Integer[] getS4() {
		return s4;
	}
	public void setS4(Integer[] s4) {
		this.s4 = s4;
	}
	public Integer[] getS5() {
		return s5;
	}
	public void setS5(Integer[] s5) {
		this.s5 = s5;
	}
	public Integer[] getS6() {
		return s6;
	}
	public void setS6(Integer[] s6) {
		this.s6 = s6;
	}
	public Integer[] getT8() {
		return t8;
	}
	public void setT8(Integer[] t8) {
		this.t8 = t8;
	}
	public String[] getT9() {
		return t9;
	}
	public void setT9(String[] t9) {
		this.t9 = t9;
	}
	public Stuscore getS() {
		return s;
	}
	public void setS(Stuscore s) {
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