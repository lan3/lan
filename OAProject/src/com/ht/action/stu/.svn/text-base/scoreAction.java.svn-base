package com.ht.action.stu;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.omg.CORBA.Request;

import com.ht.action.BaseAction;
import com.ht.service.edu.eduemp;
import com.ht.service.stu.ClassService;
import com.ht.service.stu.scoreService;
import com.ht.service.stu.studentService;
import com.ht.vo.stu.Score;

public class scoreAction extends BaseAction{
	HttpServletRequest request=ServletActionContext.getRequest();
	//成绩
	 scoreService score= (scoreService) getService("scoreService");
	 //课程
	 eduemp imp=(eduemp) getService("eduservice");
	 //学生
	 studentService stu= (studentService) getService("stuService");
	 //班级
	ClassService cl= (ClassService) getService("classService"); 
	private Score sc; 
	
	private String str;//获取当前页
	private  int currpage=1;
	private  int pagecount=10;
	private int totalRow=0;
	private int totalpage=0;

	private String t1[];
	private String t2[];
	private String t3[];
	private Double t4[];
	
	public String add(){
		score.addScore(sc);
		return list();
	}
	public String listID(){
		
		List listobj=imp.objectfindall();//查询课程
		List listclass=cl.queryClass();//班级
		this.setValToRequest("listobj", listobj);
		this.setValToRequest("listclass", listclass);
		return "to_score";
	}
	public String list(){
		HttpServletRequest request= ServletActionContext.getRequest();
		totalRow=score.scoreQuery().size();
		totalpage=(totalRow+pagecount-1)/pagecount;
		if(str!=null&&!"".equals(str)){
			currpage=Integer.parseInt(str);
		}
	
		if(currpage>totalpage){
			currpage=totalpage;
		}
		if(currpage<1){
			currpage=1;
		}
		List list=score.scorefy(currpage, pagecount);
		List listclass=cl.queryClass();//班级
		List listobj=imp.objectfindall();//查询课程
		this.setValToRequest("list", list);
		this.setValToRequest("listclass", listclass);
		this.setValToRequest("listobj", listobj);
		request.setAttribute("currpage", currpage);
		request.setAttribute("pagecount", pagecount);
		request.setAttribute("totalRow",totalRow );
		request.setAttribute("totalpage",totalpage );
		return "to_list";
	}
	//根据班级查学生
	public String stufind(){
		HttpServletRequest request=ServletActionContext.getRequest();
		String classid= request.getParameter("classid");
		totalRow=score.scoreQuery().size();
		totalpage=(totalRow+pagecount-1)/pagecount;
		if(str!=null&&!"".equals(str)){
			currpage=Integer.parseInt(str);
		}
	
		if(currpage>totalpage){
			currpage=totalpage;
		}
		if(currpage<1){
			currpage=1;
		}
		
		System.out.println("classid的值是"+classid);
		List listclass=cl.queryClass();//班级
		List listobj=imp.objectfindall();//查询课程
		List list=score.stufind(classid);
		
		request.setAttribute("stulist", list);
		this.setValToRequest("listclass", listclass);
		this.setValToRequest("listobj", listobj);
		request.setAttribute("currpage", currpage);
		request.setAttribute("pagecount", pagecount);
		request.setAttribute("totalRow",totalRow );
		request.setAttribute("totalpage",totalpage );
		return "to_stu";
	}
	//根据科目查学生
	public String object(){
		HttpServletRequest request=ServletActionContext.getRequest();
		String onjectname= request.getParameter("onjectname");
		totalRow=score.scoreQuery().size();
		totalpage=(totalRow+pagecount-1)/pagecount;
		if(str!=null&&!"".equals(str)){
			currpage=Integer.parseInt(str);
		}
	
		if(currpage>totalpage){
			currpage=totalpage;
		}
		if(currpage<1){
			currpage=1;
		}
		List listobj=imp.objectfindall();//查询课程
		List listclass=cl.queryClass();//班级
		List list=score.object(onjectname);
		
		this.setValToRequest("listclass", listclass);
		request.setAttribute("objlist", list);
		this.setValToRequest("listobj", listobj);
		request.setAttribute("currpage", currpage);
		request.setAttribute("pagecount", pagecount);
		request.setAttribute("totalRow",totalRow );
		request.setAttribute("totalpage",totalpage );
		return "to_obj";
	}
	public String delscore(){
		Score scoid=score.Byscoid(sc.getScoid());
		score.delscore(scoid);
		return list();
	}
	//查询本班所有学生
	public String stuquery(){
		String classid=request.getParameter("classid");
		try {
			classid= new String(classid.getBytes("iso-8859-1"),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List listobj=imp.objectfindall();//查询课程
		List listclass=score.list(classid);
		request.setAttribute("obj", listobj);
		request.setAttribute("class", listclass);
		request.setAttribute("currpage", currpage);
		request.setAttribute("pagecount", pagecount);
		request.setAttribute("totalRow",totalRow );
		request.setAttribute("totalpage",totalpage );
		return "to_stuclass";
	}
	//添加学生成绩
	public String addscore(){
		for (int i = 0; i < t1.length; i++) {
			Score s=new Score();
			s.setSid((t1.clone()[i]));
			s.setClassid((t2.clone()[i]));
			s.setOnjectname((t3.clone()[i]));
			s.setScore((t4.clone()[i]));
			score.addScore(s);
		}
		return list();
	}
	
	
	
	public Score getSc() {
		return sc;
	}

	public void setSc(Score sc) {
		this.sc = sc;
	}
	public String[] getT1() {
		return t1;
	}
	public void setT1(String[] t1) {
		this.t1 = t1;
	}
	public String[] getT2() {
		return t2;
	}
	public void setT2(String[] t2) {
		this.t2 = t2;
	}
	public String[] getT3() {
		return t3;
	}
	public void setT3(String[] t3) {
		this.t3 = t3;
	}
	public Double[] getT4() {
		return t4;
	}
	public void setT4(Double[] t4) {
		this.t4 = t4;
	}
	public String getStr() {
		return str;
	}
	public void setStr(String str) {
		this.str = str;
	}
	public int getCurrpage() {
		return currpage;
	}
	public void setCurrpage(int currpage) {
		this.currpage = currpage;
	}
	public int getPagecount() {
		return pagecount;
	}
	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}
	public int getTotalRow() {
		return totalRow;
	}
	public void setTotalRow(int totalRow) {
		this.totalRow = totalRow;
	}
	public int getTotalpage() {
		return totalpage;
	}
	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}
	

}
