package com.ht.service.msg.impl;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.msg.msgemp;
import com.ht.vo.inten.Inten;
import com.ht.vo.msg.Msg;

public class MsgServiceImpl extends Hibrenate_Dao implements msgemp{
//查看
	public List msglist() {
		
		return listbysql("select * from msg");
	}
//添加
	public void msgadd(Msg msg) {
	
		 addObj(msg);
	}
//查找ID
	public Msg getid(Integer msgid) {
		
		return  (Msg)getObj(Msg.class,msgid);
	}
//修改
	public boolean msgupd(Msg msg) {
		
		return updateObj(msg);
	}
//删除	
	public void msgdel(Msg msg) {
		
		deleteObj(msg);
	}

	public List lists() {
		
		return listbysql("select * from msg");
	}
	
	
	public List msglist(int currpage, int PageCount) {
		List list=pagelist("from msg", currpage, PageCount);
		return list;
		
	}

	
}
