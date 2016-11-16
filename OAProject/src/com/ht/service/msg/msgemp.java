package com.ht.service.msg;

import java.util.List;

import com.ht.vo.msg.Msg;

public interface msgemp {
	public List msglist();//查看
	public List msglist(int currpage,int PageCount);

	public void msgadd(Msg msg);//添加
	
	public  Msg  getid(Integer msgid);//查找ID
	
	public boolean msgupd(Msg msg);//修改
	
	public void msgdel(Msg msg);//删除	
	
	public List lists();
}
