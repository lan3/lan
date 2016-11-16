package com.ht.service.stu;

import java.util.List;

import com.ht.vo.stu.Hourse;

public interface hourseService {
	public boolean addHourse(Hourse ho);
	public List listHourse(int currpage,int pagecount);
	public Hourse Byid(int hourid);
	public boolean delhour(Hourse ho);
	public List weblist();
	public boolean update(Hourse ho);//ÐÞ¸Ä
}
