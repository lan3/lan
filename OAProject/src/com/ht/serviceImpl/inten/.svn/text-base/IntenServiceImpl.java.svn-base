package com.ht.serviceImpl.inten;

 
import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.inten.IntenSerice;
import com.ht.vo.inten.Inten;


public class IntenServiceImpl  extends  Hibrenate_Dao  implements  IntenSerice{


	//列表
	public List selinten(){
		return listbysql("select  *  from inten");
	}
	//增加
	public void addinten(Inten inte) {
		
		addObj(inte);
	}
	//删除
	public boolean delinte(Inten inte) {
		
		return deleteObj(inte);
	}
	
	//获取id
	public Inten getinteid(int id) {
		
		return (Inten)getObj(Inten.class, id);
	
	}
	
	//更新
	public boolean updinte(Inten inte) {
		
		return updateObj(inte);
	}
	
	
	public List intelist(int currpage, int pagecount) {
		return pagelistbysql("select  *  from inten",(currpage-1)*pagecount,pagecount);
	}
	
	
	public int count() {	
		return  getrow(	"select  count(*)  from  Inten");
	}
	
	public List selename() {
		return listbysql("select  ename  from emp where  eid !=1000");
	}
	

}
