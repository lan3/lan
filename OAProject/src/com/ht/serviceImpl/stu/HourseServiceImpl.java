package com.ht.serviceImpl.stu;

import java.util.List;


import com.ht.common.Hibrenate_Dao;
import com.ht.service.stu.hourseService;
import com.ht.vo.stu.Hourse;

public class HourseServiceImpl extends Hibrenate_Dao implements hourseService{


	public boolean addHourse(Hourse ho) {
		
		return addObj(ho);
	}

	public List listHourse(int currpage,int pagecount) {
		
		return pagelistbysql("select * from hourse ", (currpage-1)*pagecount, pagecount);
	}

	public Hourse Byid(int hourid) {
		Hourse ho= (Hourse) getObj(Hourse.class, hourid);
		return ho;
	}


	public boolean delhour(Hourse ho) {
		// TODO Auto-generated method stub
		return deleteObj(ho); 
	}

	
	public List weblist() {
		// TODO Auto-generated method stub
		return listbysql("select * from hourse");
		
	}
	

	public int counthour() {
		
		return getrow(" select count(*) from hourse ");

	}

	//ÐÞ¸Ä
	public boolean update(Hourse ho) {
		// TODO Auto-generated method stub
		return updateObj(ho);
	}

}
