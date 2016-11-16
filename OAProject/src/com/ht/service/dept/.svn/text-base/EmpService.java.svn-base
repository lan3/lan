package com.ht.service.dept;

import java.util.List;

import com.ht.vo.emp.Emp;
import com.ht.vo.emp.Family;
import com.ht.vo.emp.Jobs;

public interface EmpService {
	public List emplist(int currpage,int pagecont);
	public List emplists();
	public List geteid(String qq);
	//添加
	public boolean addemp(Emp emp);
	public boolean addjobs(Jobs job);
	public boolean addfamily(Family fa);
	//删除
	public boolean delemp(int id);
	public boolean deljobs(int id);
	public boolean delfamily(int id);
	//修改前查找
	public Emp selemp(int id);
	public List seljobs(int id);
	public List selfamily(int id);
	//修改
	public boolean updemp(Emp emp);
	public boolean updjobs(Jobs jobs);
	public boolean updfamily(Family family);
	
	//查询员工   做工作日志时下拉框选择
	public List selemp();
	public List selename(int eid);
	
}
