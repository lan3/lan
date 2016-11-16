package com.ht.action.stu;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.stu.ClassService;
import com.ht.service.stu.StunumService;
import com.ht.vo.stu.Score;
import com.ht.vo.stu.Stunum;

public class StunumAtion extends BaseAction{
	HttpServletRequest request=ServletActionContext.getRequest();
     StunumService stu=	(StunumService) getService("NumService");
     //班级
 	ClassService cl= (ClassService) getService("classService"); 
 	
 	private String str;//获取当前页
	private int currpage=1;
	private int pagecount=5;
	private int totalRow=0;
	private int totalpage=0;
 	
    private Stunum s;
    private String t1[];
    private String t2[];
    private String t3[];

	//添加
	public String adds(){
		for (int i = 0; i < t1.length; i++) {
			Stunum n=new Stunum();
			n.setSid((t1.clone()[i]));
			n.setClassid((t2.clone()[i]));
			n.setSay((t3.clone()[i]));
			stu.addnum(n);
		}
		return list();
	}
	//根据班级查询本班学生
	public String stuclass(){
		String classid=request.getParameter("classid");
		List listclass=stu.stuclass(classid);
		request.setAttribute("class", listclass);
		return "to_add";
	}
	public String query(){
		List listclass=cl.queryClass();//班级
		this.setValToRequest("listclass", listclass);
		return "to_add";
	}//查询
	public String list(){
		System.out.println("---------------");
		HttpServletRequest request= ServletActionContext.getRequest();
		totalRow=stu.numlist().size();
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
		
		List  list=stu.numlist(currpage, pagecount);
		
		
		List listclass=cl.queryClass();//班级
		this.setValToRequest("listclass", listclass);
		this.setValToRequest("list", list);
		request.setAttribute("currpage", currpage);
		request.setAttribute("pagecount", pagecount);
		request.setAttribute("totalRow", totalRow);
		request.setAttribute("totalpage", totalpage);
		return "to_list";
	}
	//删除
	public String del(){
		Stunum stuno=stu.Byid(s.getStuno());
		stu.delnum(stuno);
		return list();
	}
	//去修改
	public String toupd(){
		Stunum stuno=stu.Byid(s.getStuno());
		List listclass=cl.queryClass();//班级
		this.setValToRequest("listclass", listclass);
		this.setValToRequest("s", stuno);
		return "to_upd";
	}
	//修改
	public String update(){
		stu.update(s);
		return list();
	}
	//根据班级查询
	public String Byclasses(){
		System.out.println("asda");
		HttpServletRequest request= ServletActionContext.getRequest();
		String classid= request.getParameter("classid");
		List list=stu.Byclass(classid);
		List listclass=cl.queryClass();//班级
		this.setValToRequest("listclass", listclass);
		request.setAttribute("num", list);
		return "to_numclass";
	}
	//模糊查找
	public String looklike(){
		String uname=request.getParameter("uname");
		try {
			uname= new String(uname.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List list=stu.likestu(uname);
		request.setAttribute("like", list);
		return "to_like";
	}
	
	
	
	
	public Stunum getS() {
		return s;
	}
	public void setS(Stunum s) {
		this.s = s;
	}
	public String[] getT1() {
		return t1;
	}
	public void setT1(String[] t1) {
		this.t1 = t1;
	}
	public String[] getT2() {
		return t2;
	}
	public void setT2(String[] t2) {
		this.t2 = t2;
	}
	public String[] getT3() {
		return t3;
	}
	public void setT3(String[] t3) {
		this.t3 = t3;
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
