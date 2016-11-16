package com.ht.action.dept;

import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.dept.PatrolShuseService;
import com.ht.vo.emp.Patrol;
import com.ht.vo.emp.Patrolshuse;

public class PatrolSheseAction extends BaseAction{
	private String cname;
	private List list;
	private String num;
	private int hcount;
	private Patrolshuse patrols;
	private String t1;
	private String t2;
	private String ename;
	PatrolShuseService pss=(PatrolShuseService) getService("patrolshuseservice");
	public String list(){
		List hlist= hoursefind();   //宿舍号
		setValToRequest("hlist", hlist);
		List hslist= hcountfind();   //门牌号
		setValToRequest("hslist", hslist);
		List list= pss.patrolshuselist(); 
		setValToRequest("list", list);
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		return "tolist";
	}
	public String add(){
		List list= enamefind(ename);
		Map m=(Map) list.get(0);
		patrols.setEid(Integer.parseInt(m.get("EID")+""));
		pss.addpatrol(patrols);
		return list();
	}
	public String del(){
		Patrolshuse ps= pss.getpatrol(patrols.getPsid());
		pss.delpatrol(ps);
		return list();
	}
	
	public String toupd(){
		List list= hoursefind();//查询宿舍列表
		setValToRequest("list", list);
		Patrolshuse ps= pss.getpatrol(patrols.getPsid());
		setValToRequest("patrols", ps);
		return "toupd";
	}
	public String upd(){
		pss.updpatrol(patrols);
		return list();
	}
	
	public String selshuse(){   //查询宿舍列表
		List l= eidfind(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
		Map m=(Map) l.get(0);
		setValToRequest("ename",m.get("ENAME"));  //查询当前登录ID
		List list= hoursefind();
		setValToRequest("list", list);
		return "tojsp";
	}
	public String selcount(){
		list=hcountfind(cname);
		if(num!=null&&!num.equals("")){  //判断不能为空
			List hlist= hcountsfind(num);
			Map m=(Map)hlist.get(0);
			hcount=Integer.parseInt(m.get("HCOUNT")+"");
		}
		return "success";
	}
	public String sellist(){
		List hlist= hoursefind();   //宿舍号
		setValToRequest("hlist", hlist);
		List hslist= hcountfind(); //门牌号
		setValToRequest("hslist", hslist);
		List list= patrolshuse(); 
		setValToRequest("list", list);
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		return "tosellist";
	}
	
	public String seldata1(){
		List hlist= hoursefind();   //宿舍号
		setValToRequest("hlist", hlist);
		List hslist= hcountfind();
		setValToRequest("hslist", hslist);
		String hname=null;
		String hnum=null;
		try {
			hname = new String(ServletActionContext.getRequest().getParameter("hname").getBytes("iso-8859-1"),"utf-8");
			hnum = new String(ServletActionContext.getRequest().getParameter("hnum").getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List list= patrolshusebyname(hname, hnum);
		setValToRequest("list", list);
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		return "tosellist";
	}
	public String seldata2(){
		List hlist= hoursefind();   //宿舍号
		setValToRequest("hlist", hlist);
		List hslist= hcountfind();
		setValToRequest("hslist", hslist);
		List emplist=empfind();
		setValToRequest("emplist", emplist);  //员工列表
		List list= patrolshuseselbydate(t1, t2);
		setValToRequest("list", list);
		return "tosellist";
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
		int num=strs.length/10;   		//对象个数
		System.out.println("num :"+num);
		Patrolshuse[] d=new Patrolshuse[num];
		for (int i = 0; i < strs.length; i++) {
			if(i%10==0){
				int j=i/10;
				Patrolshuse de=new Patrolshuse();
				System.out.println("j :"+j);
				de.setPsid(Integer.parseInt(strs[0+(j*10)]));
				List l1= enamefind(strs[1+(j*10)]);
				Map m=(Map)l1.get(0);
				de.setEid(Integer.parseInt(m.get("EID")+""));  //转id
				try {
					de.setHdate(new SimpleDateFormat("yyyy-MM-dd").parse(strs[2+(j*10)]));
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				de.setHtime(strs[3+(j*10)]);
				de.setHoursename(strs[4+(j*10)]);
				de.setHoursenum(strs[5+(j*10)]);
				de.setYcount(Integer.parseInt(strs[6+(j*10)]));
				de.setScount(Integer.parseInt(strs[7+(j*10)]));
				de.setHdesc(strs[8+(j*10)]);
				de.setHadvice(strs[9+(j*10)]);
				d[j]=de;
				pss.updpatrol(d[j]);
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
		Patrolshuse d=new Patrolshuse();
		List l1= enamefind((strs[0]));
		Map m=(Map)l1.get(0);
		d.setEid(Integer.parseInt(m.get("EID")+""));  //转id
		try {
			d.setHdate(new SimpleDateFormat("yyyy-MM-dd").parse(strs[1]));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		d.setHtime(strs[2]);
		d.setHoursename(strs[3]);
		d.setHoursenum(strs[4]);
		d.setYcount(Integer.parseInt(strs[5]));
		d.setScount(Integer.parseInt(strs[6]));
		d.setHdesc(strs[7]);
		d.setHadvice(strs[8]);
		pss.addpatrol(d);
		return list();
	}
	
	// 多个删除del
	public String dels(){
		String str=ServletActionContext.getRequest().getParameter("dids");
		String strs[]=str.split(",");
		for (int i = 0; i < strs.length; i++) {
			Patrolshuse r=pss.getpatrol(Integer.parseInt(strs[i]+""));
			pss.delpatrol(r);
		}
		return list();
	}
	
	
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public int getHcount() {
		return hcount;
	}
	public void setHcount(int hcount) {
		this.hcount = hcount;
	}
	public Patrolshuse getPatrols() {
		return patrols;
	}
	public void setPatrols(Patrolshuse patrols) {
		this.patrols = patrols;
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
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
}
