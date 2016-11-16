package com.ht.action.mon;

import com.ht.action.BaseAction;
import com.ht.common.find;
import com.ht.service.mon.monservice;
import com.ht.vo.mon.Ava;
import com.ht.vo.mon.Computer;
import com.ht.vo.mon.Getpays;
import com.ht.vo.mon.Mon;
import com.ht.vo.mon.Pay;
import com.ht.vo.mon.Pays;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import sun.print.resources.serviceui;


public class avaaction extends BaseAction{
	int pagecount;//每页个数
	int currpage=1;//当前页数
	int totalpage;//总条数
	int totalrow;//总页数
	private Mon mon;
	public Mon getMon() {
		return mon;
	}
	public void setMon(Mon mon) {
		this.mon = mon;
	}
	private Ava ava;
	monservice imp=(monservice) getService("monservice");
	public String list(){//学生收费
		String s=ServletActionContext.getRequest().getParameter("xueqi");
		int  xueqi=0;
		if(s!=null&&!s.equals("")){
			xueqi=Integer.parseInt(s);
		}
		String stuname=ServletActionContext.getRequest().getParameter("stuname");
		String classname=ServletActionContext.getRequest().getParameter("classname");
			try {
				if(stuname!=null){
				stuname=new String(stuname.getBytes("iso-8859-1"),"utf-8");
				}
				if(classname!=null){
					classname=new String(classname.getBytes("iso-8859-1"),"utf-8");
				}
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
		List li=imp.avalist();
		pagecount=15;
		totalpage=li.size();
		totalrow=(totalpage+pagecount-1)/pagecount;
		if(currpage>=totalrow){
			currpage=totalrow;
		}
		if(currpage<1){
			currpage=1;
		}
		List list=imp.avalist(xueqi,stuname,classname,pagecount, currpage-1);
		List lil=imp.avaclasslist();
		List l=imp.avastulist();
		setValToRequest("lil", lil);
		setValToRequest("l", l);
		setValToRequest("list", list);
		setValToRequest("xueqi", xueqi);
		setValToRequest("stuname",stuname);
		setValToRequest("classname",classname);
		return "toavalist";
	}
	public String delete(){//学生收费删除
		imp.avadele(ava);
		return list();
	}
	public String toadd(){//学生收费去添加
		find f=new find();
		List list=f.classfind();
		setValToRequest("list", list);
		return "toavaadd";
	}
	public String add(){//学生收费添加
		Mon m=new Mon();
		m.setMoncount(ava.getAvamon());
		m.setMonpro(0);
		m.setMonremark("学费收入");
		m.setSname(ava.getSname());
		ava.setEname(ServletActionContext.getRequest().getSession().getAttribute("name")+"");
		imp.avaadd(ava);
		imp.monadd(m);
		return list();
	}
	public String monlist(){//收入管理列表
		List li=imp.monlist();
		pagecount=15;
		totalpage=li.size();
		totalrow=(totalpage+pagecount-1)/pagecount;
		if(currpage>=totalrow){
			currpage=totalrow;
		}
		if(currpage<1){
			currpage=1;
		}
		List list=imp.monlist(pagecount, currpage);
		setValToRequest("list", list);
		return "tomonlist";
	}
	public String montoadd(){//去收入添加
		
		return "tomonadd";
	}
	public String monadd(){//收入添加
		mon.setSname(ServletActionContext.getRequest().getSession().getAttribute("name")+"");
		imp.monadd(mon);
		return monlist();
	}
	public String mondele(){//收入删除
		imp.mondele(mon);
		return monlist();
	}
	public String montoupd(){
		imp.monupd(mon);
		return monlist();
	}
	private Computer com;
	public Computer getCom() {
		return com;
	}
	public void setCom(Computer com) {
		this.com = com;
	}
	public String computerlist(){//电脑领用列表
		List li=imp.comlit();
		pagecount=15;
		totalpage=li.size();
		totalrow=(totalpage+pagecount-1)/pagecount;
		if(currpage>=totalrow){
			currpage=totalrow;
		}
		if(currpage<1){
			currpage=1;
		}
		List list=imp.comlit(pagecount, currpage);
		setValToRequest("list", list);
		return "tocomputer";
	}
	public String computertoadd(){//电脑领用去添加
		return "tocomputeradd";
	}
	public String computeradd(){
		Date d=new Date();
		String data=d.toLocaleString();
		com.setCpdata(data);
		imp.comadd(com);
		return computerlist();
	}
	public String computerupd(){//电脑领用修改
		Date d=new Date();
		com.setCpdata(d.toLocaleString());
			imp.comupd(com);
			return computerlist();
	}
	public String computertoupd(){//电脑领用去修改
		Computer c=imp.getcom(com.getCpid());
		setValToRequest("c", c);
		return "tocomputerupd";
	}
	public String computerdele(){//电脑领用删除
		imp.comdele(com);
		return computerlist();
	}
	private Pay p;
	public Pay getP() {
		return p;
	}
	public void setP(Pay p) {
		this.p = p;
	}
	public String paylist(){//支出列表
		List li=imp.paylist();
		pagecount=15;
		totalpage=li.size();
		totalrow=(totalpage+pagecount-1)/pagecount;
		if(currpage>=totalrow){
			currpage=totalrow;
		}
		if(currpage<1){
			currpage=1;
		}
		List list=imp.paylist(pagecount, currpage);
		setValToRequest("list", list);
		return "topaylist";
	}
	public String payadd(){//支出添加
		imp.payadd(p);
		return paylist();
	}
	public String paytoadd(){//支出去添加
		return "topayadd";
	}
	public String paydele(){
		imp.paydele(p);
		return paylist();
	}
	public String payupd(){//支出修改
		return null;
	}
	private Pays ps;
	//工资
	public String payslist(){
		List list=imp.payslst();
		
		setValToRequest("list", list);
		return "topayslist";
	}
	public String paysadd(){//添加工资信息
		imp.paysadd(ps);
		return payslist();
	}
	public String paystoadd(){
		find f=new find();
		List list=f.findejob();
		setValToRequest("list", list);
		return "topaysadd";
	}
	public String paysdele(){
		imp.paysdele(ps);
		return payslist();
	}
	public String paysupd(){
		imp.paysupd(ps);
		return payslist();
	}
	public String paystoupd(){
		ps=imp.getpays(ps.getPaysid());
		return "topaysupd";
	}
	public String getpays(){
		find f=new find();
		List li=imp.payslst();//查询工资表的信息（确定发工资的人）
		List list=new ArrayList();
		for (int i = 0; i < li.size(); i++) {
			Pays p=(Pays) li.get(i);
			if(f.enamefind(p.getPayname())!=null){
				Getpays ps=new Getpays();
				Map m=(Map)(f.enamefind(p.getPayname()).get(0));
				int sid=Integer.parseInt(m.get("EID")+"");
				ps.setPayname(p.getPayname());//设置员工姓名
				ps.setEjob(p.getEjob());//设置员工职务
				ps.setCheckdata(26+"");//设置考核天数
				ps.setPaynorm(p.getPaynorm());//设置薪资标准
				System.out.println(imp.findleave(sid));
				ps.setSickdata(imp.findleave(sid));//设置请假天数
				ps.setOutdata(imp.findleave(sid));//设置缺勤天数
				ps.setBuslowmon((ps.getPaynorm()/26)*(ps.getSickdata()+ps.getOutdata()));//设置扣款金额
				ps.setIntodata(ps.getPaynorm()-ps.getBuslowmon());//设置出勤工资
				ps.setShouldmon(ps.getPaynorm()-ps.getBuslowmon());//设置应发工资
				ps.setOthermon(p.getOthermon());//设置其他工资
				ps.setEchotaxmon(ps.getPaynorm()-ps.getBuslowmon());//设置应税工资
				if(p.getSocialmon()!=null){
					ps.setSocialmon(p.getSocialmon());//设置社保
				}else{
					ps.setSocialmon(0);//设置社保
				}
				if(p.getNoasingfaud()!=null){
					ps.setNoasingfaud(p.getNoasingfaud());//设置住房公积金
				}else{
					ps.setNoasingfaud(0);//设置住房公积金
				}
				if(p.getIncometax()!=null){
					ps.setIncometax(p.getIncometax());//设置个税
				}else{
					ps.setIncometax(0);//设置个税
				}
				ps.setHomepay(ps.getPaynorm()-ps.getBuslowmon()-ps.getSocialmon()-ps.getNoasingfaud()-ps.getIncometax());//设置实发工资
				ps.setPayststuss("未发放");
				Date d=new Date();
				int month=d.getMonth()+1;
				if(month<10){
					ps.setPaysdata((d.getYear()+1900)+"-0"+month);
				}else{
					ps.setPaysdata((d.getYear()+1900)+"-"+month);
				}
				imp.addgetpays(ps);
			}
		}
		list=imp.getpayslist();
		setValToRequest("list", list);
		return "togetpays";
	}
	public String getlist(){
		List list=new ArrayList();
		String name= ServletActionContext.getRequest().getParameter("name")+"";
		String data=ServletActionContext.getRequest().getParameter("data")+"";
			try {
				if(name!=null){
				name=new String(name.getBytes("iso-8859-1"),"utf-8");
				}
				if(data!=null){
				data=new String(data.getBytes("iso-8859-1"),"utf-8");
				}
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		list=imp.getpayslist(name,data);
		setValToRequest("list", list);
		return "togetpays";
	}
	public String getpaystoupd(){
		find f=new find();
		List list=f.findejob();
		setValToRequest("list", list);
		Getpays g=imp.findgetpays(ps.getPaysid());
		setValToRequest("ps", g);
		return "togetpaysupd";
	}
	public String delegetpays(){
		imp.delegetpays();
		return getlist();
	}
	private Getpays g;
	public Getpays getG() {
		return g;
	}
	public void setG(Getpays g) {
		this.g = g;
	}
	public String getpaysupd(){
		imp.getpaysupd(g);
		return getlist();
	}
	public String getpsysture(){
		Getpays g=imp.findgetpays(ps.getPaysid());
		g.setPayststuss("已发放");
		imp.getpaysupd(g);
		Pay pp=new Pay();
		pp.setPaycount(Double.parseDouble(g.getHomepay()+""));
		pp.setSname("财务部");
		pp.setPayitem("员工工资");
		pp.setPaypro(ps.getRemark());
		imp.payadd(pp);//添加支出记录
		return getlist();
	}
	public Ava getAva() {
		return ava;
	}
	public void setAva(Ava ava) {
		this.ava = ava;
	}
	public Pays getPs() {
		return ps;
	}
	public void setPs(Pays ps) {
		this.ps = ps;
	}
	public int getPagecount() {
		return pagecount;
	}
	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}
	public int getCurrpage() {
		return currpage;
	}
	public void setCurrpage(int currpage) {
		this.currpage = currpage;
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
