package com.ht.service.msg.impl;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.msg.sugemp;

public class SugServiceImpl extends Hibrenate_Dao implements sugemp{

	public List suglist() {
		return listbysql("select * from msg");
	}

}
