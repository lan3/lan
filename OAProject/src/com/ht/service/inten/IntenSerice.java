package com.ht.service.inten;

import java.util.List;

import com.ht.vo.emp.Dept;
import com.ht.vo.inten.Inten;

public interface IntenSerice {
	public  List  selinten();
	public  void  addinten(Inten  inte);
	public  Inten  getinteid(int  id);
	public  boolean  delinte(Inten  inte);
	public  boolean  updinte(Inten  inte);
	public List intelist(int currpage,int pagecount);
	public  List selename();
	public  int  count();
	
}
