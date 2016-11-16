package com.ht.service.stu;

import java.util.List;

import com.ht.vo.stu.Says;
import com.ht.vo.stu.Student;

public interface SaySerivce {
	public boolean addsays(Says s);
	public List querysays();
	public Says Byid(int sayid);
	public boolean delsay(Says say);
	public boolean upd(Says say);
	public List Bysay(int currpage,int pagecount);
	public List listemp();//≤È’“‘±π§
}
