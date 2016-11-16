package com.ht.action.stu;

import java.util.List;

import com.ht.action.BaseAction;
import com.ht.service.stu.ClassService;
import com.ht.service.stu.SaySerivce;
import com.ht.service.stu.studentService;
import com.ht.vo.stu.Says;

public class SaysAction extends BaseAction{
	//谈心记录
	SaySerivce say= (SaySerivce) getService("sayService");
	//班级（老师）
	ClassService cl= (ClassService) getService("classService"); 
	private int currpage=1;
	private int pagecount=3;
	private int totalRow=0;
	private int totalpage=0;
	
	private Says s;
	public String add(){
		say.addsays(s);
		System.out.println(s.getSid());
		return list();
	}
	//查询老师
	public String listsc(){
		List list=say.listemp();
		this.setValToRequest("emp", list);
		return "to_addsays";                                                            
	} 
	//查询
	public String list(){
		System.out.println("进来了");
		totalRow=say.querysays().size();
		totalpage=(totalRow+pagecount-1)/pagecount;
		String str="";
		if(str!=null&&!"".equals(str)){
			currpage=Integer.parseInt(str);
		}
		if(currpage>totalpage){
			currpage=totalpage;
		}
		if(currpage<1){
			currpage=1;
		}
		List list=say.Bysay(currpage, pagecount);
		this.setValToRequest("list", list);
		this.setValToRequest("currpage", currpage);
		this.setValToRequest("pagecount", pagecount);
		this.setValToRequest("totalRow", totalRow);
		this.setValToRequest("totalpage", totalpage);
		return "to_list";
	}
	//删除
	public String del(){
		Says ss=say.Byid(s.getSayid());
		say.delsay(ss);
		return list();
	}
	//去修改
	public String toupd(){
		Says ss=say.Byid(s.getSayid());
		this.setValToRequest("s", ss);
		List list=cl.queryClass();
		this.setValToRequest("listsc", list);
		return "to_upd";
	}
	//修改
	public String update(){		
		say.upd(s);
		return list();
	}
	
	
	
	public Says getS() {
		return s;
	}
	public void setS(Says s) {
		this.s = s;
	}
}
