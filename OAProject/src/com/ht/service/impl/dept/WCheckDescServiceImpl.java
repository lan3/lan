package com.ht.service.impl.dept;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.dept.WCheckDescService;
import com.ht.vo.emp.Workcheckdesc;

public class WCheckDescServiceImpl extends Hibrenate_Dao implements WCheckDescService{

	public boolean adddesc(Workcheckdesc desc) {
		// TODO Auto-generated method stub
		return addObj(desc);
	}

	public List list() {
		// TODO Auto-generated method stub
		return list("from Workcheckdesc");
	}

	public Workcheckdesc getWdesc(int id) {
		// TODO Auto-generated method stub
		return (Workcheckdesc)getObj(Workcheckdesc.class, id);
	}

	public boolean deldesc(Workcheckdesc desc) {
		// TODO Auto-generated method stub
		return deleteObj(desc);
	}

	public boolean upddesc(Workcheckdesc desc) {
		// TODO Auto-generated method stub
		return updateObj(desc);
	}

	public List lists(int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelist("from Workcheckdesc", currpage, pagecount);
	}
	
}
