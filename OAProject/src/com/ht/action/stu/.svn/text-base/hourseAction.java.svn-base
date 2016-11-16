package com.ht.action.stu;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.omg.CORBA.Request;

import com.ht.action.BaseAction;
import com.ht.service.stu.hourseService;
import com.ht.vo.stu.Hourse;

public class hourseAction extends BaseAction{
	HttpServletRequest request=ServletActionContext.getRequest();
	hourseService hs= (hourseService) getService("LService");
	private Hourse h;
	private List list;
	private String str;//获取当前页
	private  int currpage=1;
	private  int pagecount=3;
	private int totalRow=0;
	private int totalpage=0;
	
	public String addhourse(){
		System.out.println("-------");
		hs.addHourse(h);
		return list();
	}
	public String list(){
		HttpServletRequest request= ServletActionContext.getRequest();
	
		
		if(str!=null&&!"".equals(str)){
			currpage=Integer.parseInt(str);
		}
		totalRow=hs.weblist().size();
		totalpage=(totalRow+pagecount-1)/pagecount;
		
		
		if(currpage>totalpage){
			currpage=totalpage;
		}
		if(currpage<1){
			currpage=1;
		}
		list=hs.listHourse(currpage, pagecount);
		request.setAttribute("list", list);
		request.setAttribute("currpage", currpage);
		request.setAttribute("pagecount", pagecount);
		request.setAttribute("totalRow",totalRow );
		request.setAttribute("totalpage",totalpage );
		return "to_list";
	}
	public String del(){
		Hourse ho= hs.Byid(h.getHourid());
		hs.delhour(h);
		return list();
	}
	//去修改
	public String upd(){
		Hourse ho= hs.Byid(h.getHourid());
		request.setAttribute("hi", ho);
		return "to_upd";
	}
	//修改
	public String update(){
		hs.update(h);
		return list();
	}
	
	
	
	
	public Hourse getH() {
		return h;
	}
	public void setH(Hourse h) {
		this.h = h;
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
