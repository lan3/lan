package com.ht.action.stu;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.stu.ViewteachService;
import com.ht.vo.stu.Views;
import com.ht.vo.stu.Viewteach;

public class ViewteachAction extends BaseAction{
	HttpServletRequest request=ServletActionContext.getRequest();
	ViewteachService tea= (ViewteachService) getService("TeachViewService");
	private Viewteach t;
	private Views s;
	private String str;//获取当前页
	private int currpage=1;
	private int pagecount=3;
	private int totalRow=0;
	private int totalpage=0;
	
	//添加反馈回复信息
	public String addteachview(){
		String sid=request.getParameter("sid");
		System.out.println("sid的值是===="+sid);
		int eid= Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"");
 		System.out.println("eid的值是"+eid);
 		List list= eidfind(eid);
 		Map m=(Map) list.get(0);
 		request.setAttribute("eid", eid);
 		//获取到登陆用户的name
 		t.setTeach(m.get("ENAME")+"");
 		System.out.println("登陆的用户是"+m.get("ENAME")+"");
 		t.setSid(sid);
		//获取当前时间
 		
 		Date time=new Date();
 		System.out.println(time.toLocaleString());
		t.setTimes(time);
		tea.addteachview(t);
		return fasong();
	}
	//点击了发送回到此方法
	public String fasong(){
		String sid=request.getParameter("sid");
		int eid= Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"");
 		System.out.println("eid的值是"+eid);
 		List list= eidfind(eid);
 		Map m=(Map) list.get(0);
 		request.setAttribute("eid", eid);
 		//获取到登陆用户的name
 		try {
			
			List stulist=tea.contview(sid);//查询学生回复消息
			List lists=tea.teachcont(m.get("ENAME")+"",sid);//查询老师回复消息
			System.out.println("stulist的大小是"+stulist);
			request.setAttribute("stucont", stulist);
			request.setAttribute("teachcont", lists);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "to_viewstucont";
		
	}
	
	//查询所有消息
	public String contview(){
		String sid=request.getParameter("sid");
		Views vid=tea.Byid(s.getVid());
		int eid= Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"");
 		System.out.println("eid的值是"+eid);
 		List list= eidfind(eid);
 		Map m=(Map) list.get(0);
 		request.setAttribute("eid", eid);
 		//获取到登陆用户的name
 		try {
			sid= new String(sid.getBytes("iso-8859-1"),"utf-8");
			List stulist=tea.contview(sid);//查询学生回复消息
			List lists=tea.teachcont(m.get("ENAME")+"",sid);//查询老师回复消息
			System.out.println("stulist的大小是"+stulist);
			request.setAttribute("stucont", stulist);
			request.setAttribute("teachcont", lists);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getSession().setAttribute("viewstu", vid);
		return "to_cont";
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
	
	public Viewteach getT() {
		return t;
	}
	public void setT(Viewteach t) {
		this.t = t;
	}

	public Views getS() {
		return s;
	}
	public void setS(Views s) {
		this.s = s;
	}
}
