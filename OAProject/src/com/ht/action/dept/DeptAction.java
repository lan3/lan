package com.ht.action.dept;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.dept.DeptService;
import com.ht.vo.emp.Dept;

public class DeptAction extends BaseAction{
	private Dept dept;
	private List list;
	private int currpage=1;
	private int pagecount=8;
	private int totalpage=0;
	private int totalrow=0;
	DeptService ds=(DeptService) getService("deptservice");
	//list
	public String list(){
		
		totalrow=ds.sellist().size();
		totalpage=(totalrow+pagecount-1)/pagecount;
		HttpServletRequest request= ServletActionContext.getRequest();
		String pages=request.getParameter("page");
		System.out.println("totalrow "+totalrow);
		if(pages!=null&&!pages.equals("")){
			currpage=Integer.parseInt(pages);
		}
		if(currpage<1){
			currpage=1;
		}
		if(currpage>totalpage){
			currpage=totalpage;
		}
		list= ds.deptlist(currpage,pagecount);
		List emplist=empfind();
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		request.setAttribute("list", list);
		request.setAttribute("emplist", emplist);
		return "toright";
	}
	
	
	public String  add(){
		ds.deptadd(dept);
		return list();
	}
	public String seldata(){
		List emplist=empfind();
		setValToRequest("emplist", emplist);
		return "toadd";
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
		Dept d=new Dept();
		d.setDname(strs[0]);
		List l1= enamefind((strs[1]));
		Map m=(Map)l1.get(0);
		 //转id
		d.setEid(Integer.parseInt(m.get("EID")+""));
		if(strs[2].equals("不可用")){
			d.setStatus(0);
		}else if(strs[2].equals("可用")){
			d.setStatus(1);
		}
		d.setCreatetime(strs[3]);
		List l2= enamefind((strs[4]));
		Map m2=(Map)l1.get(0);
		 //转id
		d.setXid(Integer.parseInt(m2.get("EID")+""));
		ds.deptadd(d);
		return list();
	}
	// 多个删除del
	public String dels(){
		String str=ServletActionContext.getRequest().getParameter("dids");
		String strs[]=str.split(",");
		for (int i = 0; i < strs.length; i++) {
			Dept d=ds.getdept(Integer.parseInt(strs[i]+""));
			ds.deldept(d);
		}
		return list();
	}
	//单个删除
	public String del(){
		Dept d= ds.getdept(dept.getDid());
		ds.deldept(d);
		return list();
	}
	
	public String toupd(){
		List emplist=empfind();
		Dept d= ds.getdept(dept.getDid());
		setValToRequest("emplist", emplist);
		setValToRequest("dept", d);
		return "todeptupd";
	}
	public String upd(){
		ds.upddept(dept);
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
		Dept[] d=new Dept[num];
		for (int i = 0; i < strs.length; i++) {
			if(i%6==0){
				int j=i/6;
				Dept de=new Dept();
				System.out.println("j :"+j);
				if(strs[0+(j*6)]!=null&&!strs[0+(j*6)].equals("")){
					de.setDid(Integer.parseInt(strs[0+(j*6)]));
					de.setDname(strs[1+(j*6)]);
					List l1= enamefind((strs[2+(j*6)]));
					Map m=(Map)l1.get(0);
					de.setEid(Integer.parseInt(m.get("EID")+""));  //转id
					if(strs[3+(j*6)].equals("不可用")){
						de.setStatus(0);
					}else if(strs[3+(j*6)].equals("可用")){
						de.setStatus(1);
					}
					de.setCreatetime(strs[4+(j*6)]);
					List l2=enamefind((strs[5+(j*6)]));
					Map m2=(Map) l2.get(0);
					de.setXid(Integer.parseInt(m2.get("EID")+""));
					d[j]=de;
					ds.upddept(d[j]);
				}else{
					String str2=null;  //添加
					try {
						str2=new String(ServletActionContext.getRequest().getParameter("last").getBytes("iso-8859-1"),"utf-8");
					} catch (UnsupportedEncodingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					String strs2[]= str2.split(",");
					Dept dd=new Dept();
					dd.setDname(strs2[0]);
					List l1= enamefind((strs2[1]));
					Map m=(Map)l1.get(0);
					 //转id
					dd.setEid(Integer.parseInt(m.get("EID")+""));
					if(strs2[2].equals("不可用")){
						dd.setStatus(0);
					}else if(strs2[2].equals("可用")){
						dd.setStatus(1);
					}
					dd.setCreatetime(strs2[3]);
					List l2= enamefind((strs2[4]));
					Map m2=(Map)l1.get(0);
					 //转id
					dd.setXid(Integer.parseInt(m2.get("EID")+""));
					ds.deptadd(dd);
				}
			}
		}
		return list();
	}
	public String selemp(){
		list= empfind();
		System.out.println("111111");
		return "success";
	}
	
	
	public Dept getDept() {
		return dept;
	}
	public void setDept(Dept dept) {
		this.dept = dept;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
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
	public int getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	public int getTotalrow() {
		return totalrow;
	}
	public void setTotalrow(int totalrow) {
		this.totalrow = totalrow;
	}
	
}
