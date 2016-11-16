package com.ht.serviceImpl.stu;

import java.util.List;

import com.ht.common.Hibrenate_Dao;
import com.ht.service.stu.scoreService;
import com.ht.vo.stu.Score;

public class ScoreServiceImpl extends Hibrenate_Dao implements scoreService{

	public boolean addScore(Score score) {
		// TODO Auto-generated method stub
		return addObj(score);
	}

	
	public List scoreQuery() {
		// TODO Auto-generated method stub
		return listbysql("select * from score");
	}

	//根据班级查学生
	public List stufind(String classid) {
		// TODO Auto-generated method stub
		return listbysql("select distinct * from (select  c.* from 　student s , score c   where c.classid='"+classid+"' and s.classid=c.classid)");
	}
	//根据科目查学生
	public List object(String onjectname) {
		// TODO Auto-generated method stub
		return listbysql("select distinct * from (select  c.* from 　object s , score c   where c.onjectname='"+onjectname+"' and s.onjectname=c.onjectname)");
	}	


	
	public Score Byscoid(int scoid) {
		// TODO Auto-generated method stub
		Score score= (Score) getObj(Score.class, scoid);
		return score;
	}


	
	public boolean delscore(Score score) {
		
		return deleteObj(score);
	}
	
	public List list(String classid){
		
		return listbysql("select * from student where classid= '"+classid+"'");
	}


	//分页
	public List scorefy(int currpage, int pagecount) {
		// TODO Auto-generated method stub
		return pagelistbysql("select * from score",(currpage-1)*pagecount, pagecount);
	}

}
