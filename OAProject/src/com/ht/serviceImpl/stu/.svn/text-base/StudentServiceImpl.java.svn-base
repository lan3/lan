package com.ht.serviceImpl.stu;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.stu.studentService;
import com.ht.vo.stu.Student;

public class StudentServiceImpl extends Hibrenate_Dao implements studentService{

	public boolean addStu(Student stu) {
		// TODO Auto-generated method stub
		return addObj(stu);
	}

	public List listStudent() {
		
		return listbysql("select * from Student");
	}

	public Student Byid(int sid) {
			Student stu= (Student) getObj(Student.class, sid);
		return stu;
	}

	public boolean delhour(Student stu) {
		// TODO Auto-generated method stub
		return deleteObj(stu);
	}

	public boolean update(Student stu) {
		// TODO Auto-generated method stub
		return updateObj(stu);
	}

	public List Bystu(int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelistbysql("select * from Student", (currpage-1)*pagecount, pagecount);
	}

	//查询学生
	public List query(String uname) {
		// TODO Auto-generated method stub
		return listbysql("select * from student where  sname like'%"+uname+"%' or classid like'%"+uname+"%'");
	}

	//筛选分页
	public List queryfy(String uname, int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelistbysql("select * from student where  sname like'%"+uname+"%' or classid like'%"+uname+"%'",(currpage-1)*pagecount, pagecount);
	}
}
