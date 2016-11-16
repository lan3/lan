package com.ht.service.mon;

import java.util.List;

import com.ht.vo.mon.Ava;
import com.ht.vo.mon.Computer;
import com.ht.vo.mon.Getpays;
import com.ht.vo.mon.Mon;
import com.ht.vo.mon.Pay;
import com.ht.vo.mon.Pays;

public interface monservice {
	//学生收费管理
	public List avalist();
	public List avalist(int xueqi,String stuname,String classname,int pagecount,int currpage);
	public void avaadd(Ava ava);
	public List avastulist();
	public List avaclasslist();
	public void avadele(Ava ava);
	//收入管理
	public List monlist();
	public List monlist(int pagecount,int currpage) ;
	public void monadd(Mon mon);
	public void monupd(Mon mon);
	public void mondele(Mon mon);
	//电脑领用管理
	public List comlit();
	public List comlit(int pagecount,int currpage);
	public void comupd(Computer com);
	public void comadd(Computer com);
	public void comdele(Computer com);
	public Computer getcom(Integer comid);
	//支出管理
	public List paylist();
	public List paylist(int pagecount,int currpage);
	public void payupd(Pay p);
	public void paydele(Pay p);
	public void payadd(Pay p);
	//工资管理
	public List payslst();
	public void paysadd(Pays p);
	public void paysdele(Pays p);
	public void paysupd(Pays p);
	public Pays getpays(Integer paysid);
	public int findleave(int sid);//查找请假天数
	public int findworkcheckdesc(int sid);//查找缺勤天数
	//发放工资
	public void getpaysupd(Getpays p);//修改工资
	public Getpays findgetpays(Integer pid);
	public List getpayslist();//查询所有工资
	public List getpayslist(String name,String data);//条件查询
	public void addgetpays(Getpays p);//添加工资
	public void delegetpays();//清空工资表
}
