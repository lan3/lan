package com.ht.action.msg;

import java.util.List;

import com.ht.action.BaseAction;
import com.ht.service.msg.sugemp;


public class SugAction extends BaseAction{
	sugemp sm= (sugemp)getService("sugservice");
	private List list ;

	public String list(){
		
		System.out.println("12345");
		
		list=sm.suglist();
		System.out.println("size: "+list.size());
		this.setValToRequest("lists", list);
		
		return "to_sug";
	}
	
	
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
}
