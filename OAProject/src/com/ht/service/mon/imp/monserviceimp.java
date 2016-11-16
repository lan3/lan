package com.ht.service.mon.imp;

import java.util.List;
import java.util.Map;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.mon.monservice;
import com.ht.vo.mon.Ava;
import com.ht.vo.mon.Computer;
import com.ht.vo.mon.Getpays;
import com.ht.vo.mon.Mon;
import com.ht.vo.mon.Pay;
import com.ht.vo.mon.Pays;
import com.sun.org.apache.bcel.internal.generic.LSTORE;

public class monserviceimp extends Hibrenate_Dao implements monservice{
	

	public void avaadd(Ava ava) {
		// TODO Auto-generated method stub
		addObj(ava);
	}
	
	public List avalist() {
		// TODO Auto-generated method stub
		List list=listbysql("select * from ava");
		return list;
	}
	
	public int findleave(int sid){//查找请假天数
		int i=0;
		List l=listbysql("select sum(t.lcount) as scount from LEAVE t where t.eid="+sid);
			Map m=(Map) l.get(0);
			if(m.get("SCOUNT")!=null&&!m.get("SCOUNT").equals("")){
				i=Integer.parseInt(m.get("SCOUNT")+"");
			}
		
		return i;
	}
	public int findworkcheckdesc(int sid){//查找缺勤天数
		int i=0;
		List l= listbysql("select count(*) as scount  from WORKCHECKDESC where to_char(sysdate,'yyyy-mm')=to_char(edate,'yyyy-mm') and eid="+sid);
			Map m=(Map) l.get(0);
			if(m.get("SCOUNT")!=null&&!m.get("SCOUNT").equals("")){
				i=Integer.parseInt(m.get("SCOUNT")+"");
			}
		return i;
	}
	public List avalist(int xueqi,String stuname,String classname,int pagecount,int currpage) {//分页
		// TODO Auto-generated method stub
		String sql="select * from ava where 1=1";
		if(xueqi!=0){
			sql+=" and term="+xueqi;
		}
		if(stuname!=null&&!stuname.equals("")){
			sql+=" and sname='"+stuname+"'";
		}
		if(classname!=null&&!classname.equals("")){
			sql+=" and classname='"+classname+"'";
		}
		List list=pagelistbysql(sql,currpage*pagecount, pagecount);
		return list;
	}
	public List avastulist(){
		
		return listbysql("select distinct sname from ava ");
	}
	public List avaclasslist(){
		return listbysql("select distinct classname from ava");
	}
	public void avadele(Ava ava) {
		// TODO Auto-generated method stub
		deleteObj(ava);
	}
	public List monlist() {
		// TODO Auto-generated method stub
		List list=list("from Mon");
		return list;
	}
	public List monlist(int pagecount,int currpage) {//分页
		// TODO Auto-generated method stub
		List list=pagelist("from Mon",currpage,pagecount);
		return list;
	}
	public void monadd(Mon mon) {
		// TODO Auto-generated method stub
		addObj(mon);
	}
	
	public void monupd(Mon mon){
		updateObj(mon);
	}

	public void mondele(Mon mon) {
		// TODO Auto-generated method stub
		deleteObj(mon);
	}

	public void comadd(Computer com) {
		// TODO Auto-generated method stub
		addObj(com);
	}

	public List comlit() {
		// TODO Auto-generated method stub
		return list("from Computer");
	}
	public List comlit(int pagecount,int currpage) {
		// TODO Auto-generated method stub
		return pagelist("from Computer",currpage,pagecount);
	}

	public void comupd(Computer com) {
		// TODO Auto-generated method stub
		updateObj(com);
	}

	public void comdele(Computer com) {
		// TODO Auto-generated method stub
		deleteObj(com);
	}

	public Computer getcom(Integer comid) {
		// TODO Auto-generated method stub
		return (Computer) getObj(Computer.class, comid);
	}

	public void paydele(Pay p) {
		// TODO Auto-generated method stub
		deleteObj(p);
	}

	public List paylist() {
		// TODO Auto-generated method stub
		return list("from Pay");
	}
	public List paylist(int pagecount,int currpage) {//分页
		// TODO Auto-generated method stub
		return pagelist("from Pay",currpage,pagecount);
	}
	public void payupd(Pay p) {
		// TODO Auto-generated method stub
		updateObj(p);
	}

	public void payadd(Pay p) {
		// TODO Auto-generated method stub
		addObj(p);
	}

	public void paysadd(Pays p) {
		// TODO Auto-generated method stub
		addObj(p);
	}

	public void paysdele(Pays p) {
		// TODO Auto-generated method stub
		deleteObj(p);
	}

	public List payslst() {
		// TODO Auto-generated method stub
		return list("from Pays");
	}

	public void paysupd(Pays p) {
		// TODO Auto-generated method stub
		updateObj(p);
	}
	public List getpayslist() {//查询所有工资
		// TODO Auto-generated method stub
		return listbysql("select * from getpays");
	}
	public List getpayslist(String name,String data) {//查询所有工资
		// TODO Auto-generated method stub
		String sql=" select * from getpays where 1=1";
		if(!name.equals("null")&&!name.equals("")){
			sql+=" and payname='"+name+"'";
		}
		if(!data.equals("null")&&!data.equals("")){
			sql+=" and paysdata='"+data+"'";
		}
		return listbysql(sql);
	}
	public void getpaysupd(Getpays p) {//修改工资
		// TODO Auto-generated method stub
		updateObj(p);
	}
	public Getpays findgetpays(Integer pid) {//查询工资
		// TODO Auto-generated method stub
		Getpays g=(Getpays) getObj(Getpays.class, pid);
		return g;
	}
	public void addgetpays(Getpays p) {//添加工资
		// TODO Auto-generated method stub
		addObj(p);
	}
	public void delegetpays() {//删除工资
		// TODO Auto-generated method stub
		delbysql("delete getpays");
	}
	public Pays getpays(Integer paysid) {
		// TODO Auto-generated method stub
		Pays p=(Pays) getObj(Pays.class, paysid);
		return p;
	}


}
