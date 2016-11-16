package com.ht.service.stu;

import java.util.List;

import com.ht.vo.stu.Score;

public interface scoreService {
	public boolean addScore(Score score);
	public List scoreQuery();
	public List stufind(String classid);
	public Score Byscoid(int scoid);
	public boolean delscore(Score score);
	public List object(String onjectname);
	public List list(String classid);
	public List scorefy(int currpage,int pagecount);
}

