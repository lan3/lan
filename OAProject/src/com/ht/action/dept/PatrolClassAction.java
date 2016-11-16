package com.ht.action.dept;


import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;


import com.ht.action.BaseAction;
import com.ht.service.dept.PatrolClassService;
import com.ht.vo.emp.Patrol;
import com.ht.vo.emp.Report;

public class PatrolClassAction extends BaseAction{
	private Patrol patrol;
	private String ename;
	private String cname;
	private int count;
	private List  tlist;
	private String t1;
	private String t2;
	private int peid;
	PatrolClassService pc=(PatrolClassService) getService("patrolclassservice");
	
	public String list(){
		//查询班级列表
		List list= classfind();
		setValToRequest("list", list);
		List clist= classfind();   //班级列表
		setValToRequest("clist", clist);
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List plist=pc.patrollist();
		setValToRequest("plist", plist);
		List tlist=teacherfind();
		setValToRequest("tlist", tlist);
		return "tolist";
	}
	public String sellist(){
		//查询班级列表
		List list= classfind();
		setValToRequest("list", list);
		List clist= classfind();   //班级列表
		setValToRequest("clist", clist);
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List plist=patrolbysql();
		setValToRequest("plist", plist);
		List tlist=teacherfind();
		setValToRequest("tlist", tlist);
		return "tosellist";
	}
	public String seldata1(){
		//查询班级列表
		List list= classfind();
		setValToRequest("list", list);
		List clist= classfind();   //班级列表
		setValToRequest("clist", clist);
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List plist= patrolbydate(t1, t2);
		setValToRequest("plist", plist);
		return "tosellist";
	}
	public String seldata2(){
		//查询班级列表
		List list= classfind();
		setValToRequest("list", list);
		List clist= classfind();   //班级列表
		setValToRequest("clist", clist);
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List plist= patrolbyeid(peid);
		setValToRequest("plist", plist);
		return "tosellist";
	}
	public String seldata3(){
		//查询班级列表
		List list= classfind();
		setValToRequest("list", list);
		List clist= classfind();   //班级列表
		setValToRequest("clist", clist);
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		String str=null;
		try {
			str = new String(ServletActionContext.getRequest().getParameter("name").getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List plist= patrolbyname(str);
		setValToRequest("plist", plist);
		return "tosellist";
	}
	
	public String add(){
		List list= enamefind(ename);
		Map m=(Map) list.get(0);
		patrol.setEid(Integer.parseInt(m.get("EID")+""));
		pc.addpatrol(patrol);
		return list();
	}
	
	public String del(){
		Patrol p =pc.getpatrol(patrol.getPid());
		pc.delpatrol(p);
		return list();
	}
	public String toupd(){
		//查询班级列表
		List list= classfind();
		setValToRequest("list", list);
		Patrol p =pc.getpatrol(patrol.getPid());
		setValToRequest("patrol", p);
		return "toupd";
	}
	public String upd(){
		pc.updpatrol(patrol);
		return list();
	}
	
	
	public String seldata(){
		List l= eidfind(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
		Map m=(Map) l.get(0);
		setValToRequest("ename",m.get("ENAME"));  //查询当前登录ID
		//查询班级列表
		List list= classfind();
		setValToRequest("list", list);
		return "toaddjsp";
	}
	public String selcount(){
		//查询人数
		List list= countfind(cname);
		Map m=(Map) list.get(0);
		count=Integer.parseInt(m.get("CLASSCOUNT")+"") ;
		//查询任课老师列表
		tlist=teacherfind(cname);
		return "success";
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
		int num=strs.length/12;   		//对象个数
		System.out.println("num :"+num);
		Patrol[] d=new Patrol[num];
		for (int i = 0; i < strs.length; i++) {
			if(i%12==0){
				int j=i/12;
				Patrol de=new Patrol();
				System.out.println("j :"+j);
				System.out.println(strs[0+(j*12)]);
				de.setPid(Integer.parseInt(strs[0+(j*12)]));
				List l1= enamefind(strs[1+(j*12)]);
				Map m=(Map)l1.get(0);
				de.setEid(Integer.parseInt(m.get("EID")+""));  //转id
				try {
					de.setPdatetime(new SimpleDateFormat("yyyy-MM-dd").parse(strs[2+(j*12)]));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				de.setPtime(strs[3+(j*12)]);
				de.setPclass(strs[4+(j*12)]);
				de.setYcount(Integer.parseInt(strs[5+(j*12)]));
				de.setScount(Integer.parseInt(strs[6+(j*12)]));
				de.setWcdesc(strs[7+(j*12)]);
				de.setTname(strs[8+(j*12)]);
				de.setTisstay(strs[9+(j*12)]);
				de.setStudesc(strs[10+(j*12)]);
				de.setTisdo(strs[11+(j*12)]);
				d[j]=de;
				pc.updpatrol(d[j]);
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
		Patrol d=new Patrol();
		List l1= enamefind((strs[0]));
		Map m=(Map)l1.get(0);
		d.setEid(Integer.parseInt(m.get("EID")+""));  //转id
		try {
			d.setPdatetime(new SimpleDateFormat("yyyy-MM-dd").parse(strs[1]));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		d.setPtime(strs[2]);
		d.setPclass(strs[3]);
		d.setYcount(Integer.parseInt(strs[4]));
		d.setScount(Integer.parseInt(strs[5]));
		d.setWcdesc(strs[6]);
		d.setTname(strs[7]);
		d.setTisstay(strs[8]);
		d.setStudesc(strs[9]);
		d.setTisdo(strs[10]);
		pc.addpatrol(d);
		return list();
	}
	
	// 多个删除del
	public String dels(){
		String str=ServletActionContext.getRequest().getParameter("dids");
		String strs[]=str.split(",");
		for (int i = 0; i < strs.length; i++) {
			Patrol r=pc.getpatrol(Integer.parseInt(strs[i]+""));
			pc.delpatrol(r);
		}
		return list();
	}
	
	
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public List getTlist() {
		return tlist;
	}
	public void setTlist(List tlist) {
		this.tlist = tlist;
	}
	public Patrol getPatrol() {
		return patrol;
	}
	public void setPatrol(Patrol patrol) {
		this.patrol = patrol;
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
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
}
