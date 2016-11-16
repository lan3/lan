package com.ht.serviceImpl.stu;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.stu.SaySerivce;
import com.ht.vo.stu.Says;

public class SayServiceImpl extends Hibrenate_Dao implements SaySerivce{

	public boolean addsays(Says s) {
		// TODO Auto-generated method stub
		return addObj(s);
	}

	public List querysays() {
		// TODO Auto-generated method stub
		return list("from Says");
	}

	public Says Byid(int sayid) {
		// TODO Auto-generated method stub
		Says say= (Says) getObj(Says.class, sayid);
		return say;
	}

	public boolean delsay(Says say) {
		// TODO Auto-generated method stub
		return deleteObj(say);
	}

	public boolean upd(Says say) {
		// TODO Auto-generated method stub
		return updateObj(say);
	}

	public List Bysay(int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelist("from Says", currpage, pagecount);
	}
	public List listemp() {
		// TODO Auto-generated method stub
		return listbysql("select * from emp where ejob='°àÖ÷ÈÎ'");
	}

	
}
