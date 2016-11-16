package com.ht.action.stu;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.omg.CORBA.Request;

import com.ht.action.BaseAction;
import com.ht.service.stu.ClassService;
import com.ht.service.stu.hourseService;
import com.ht.service.stu.studentService;
import com.ht.vo.stu.Classes;
import com.ht.vo.stu.Hourse;
import com.ht.vo.stu.Student;

public class StudentAction extends BaseAction{
	//学生
	 studentService stu= (studentService) getService("stuService");
	 //宿舍
	 hourseService hs= (hourseService) getService("LService");
	 //班级
	 ClassService cl= (ClassService) getService("classService");
	 private Student s;
	 private Hourse ho;
	 private Classes c;
	 	private String str;//获取当前页
		private int currpage=1;
		private int pagecount=5;
		private int totalRow=0;
		private int totalpage=0;
	 
	 //获取从页面传来的参数
	private File fil;
		//获取图片的名称
	private String filFileName;
		//获取文件类型
	private String filContentType;
			
			//获取文件保存路径
	private String savePath=ServletActionContext.getRequest().getRealPath("files")+"\\";
	private Object fileFileName;
	 
	
	public String add(){
		
		try {
				
				FileOutputStream fos = new FileOutputStream(this.savePath
						+ this.filFileName);
				FileInputStream fis = new FileInputStream(this.fil);
				byte[] bs = new byte[1024];
				int real = fis.read(bs);
				while (real > 0) {
					fos.write(bs, 0, real);
					real = fis.read(bs);
				}
				fos.close();
				fis.close();
	
				
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 Random  random=new Random();
		 
		 Double j=random.nextDouble()*1000000;
		 System.out.println("j"+j);
		 String  sname=j+"";
		 String ssname=sname.substring(0, 6);
		 System.out.println("账号为"+j);
		 s.setSsname(ssname);
		s.setPname(filFileName);
		s.setSpwd("123");
		stu.addStu(s);
		return stulist();
	}
	//查询宿舍
	public String listhourse(){
		System.out.println("进来了");
		List hour=hs.weblist();
		List classes=cl.queryClass();//查询班级
		this.setValToRequest("classes", classes);
		this.setValToRequest("hour", hour);
		return "to_addstu";
	}
	
	
	//查询学生
	public String stulist(){
		HttpServletRequest request= ServletActionContext.getRequest();
		totalRow=stu.listStudent().size();
		System.out.println("---"+stu.listStudent().size());
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
		
		List list=stu.Bystu(currpage, pagecount);
		request.setAttribute("list", list);
		request.setAttribute("currpage", currpage);
		request.setAttribute("pagecount", pagecount);
		request.setAttribute("totalRow",totalRow );
		request.setAttribute("totalpage",totalpage );
		this.setValToRequest("list", list);
		return "to_list";
	}
	
	//删除
	public String delstu(){
		System.out.println("++++++++++++++++=");
		Student ss=stu.Byid(s.getSid());
		System.out.println(s.getSname());
		stu.delhour(ss);
		return stulist();
	}
	//去修改
	public String toupd(){
		Student ss=stu.Byid(s.getSid());
		this.setValToRequest("stu", ss);
		List hour=hs.weblist();
		List classes=cl.queryClass();//查询班级
		this.setValToRequest("classes", classes);
		this.setValToRequest("hour", hour);
		return "to_upd";
	}
	//修改
	public String update(){
		 if(this.fileFileName==null){
			 this.fileFileName=s.getPname();
		 }else{
			 try {
					
					FileOutputStream fos = new FileOutputStream(this.savePath
							+ this.filFileName);
					FileInputStream fis = new FileInputStream(this.fil);
					byte[] bs = new byte[1024];
					int real = fis.read(bs);
					while (real > 0) {
						fos.write(bs, 0, real);
						real = fis.read(bs);
					}
					fos.close();
					fis.close();

					
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				s.setPname(filFileName);
				stu.update(s);
				System.out.println();
		 }
		
		return stulist();
	}
	//查询学生
	public String querystu(){
		HttpServletRequest request=ServletActionContext.getRequest();
		String uname=request.getParameter("uname");
		totalRow=stu.query(uname).size();
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
		List lists=stu.queryfy(uname, currpage, pagecount);
		request.setAttribute("list", lists);
		request.setAttribute("currpage", currpage);
		request.setAttribute("pagecount", pagecount);
		request.setAttribute("totalRow",totalRow );
		request.setAttribute("totalpage",totalpage );
		return "to_querystu";
	}
	
	
	
	public Student getS() {
		return s;
	}
	public void setS(Student s) {
		this.s = s;
	}
	public Hourse getHo() {
		return ho;
	}
	public void setHo(Hourse ho) {
		this.ho = ho;
	}
	public Classes getC() {
		return c;
	}
	public void setC(Classes c) {
		this.c = c;
	}
	public File getFil() {
		return fil;
	}
	public void setFil(File fil) {
		this.fil = fil;
	}
	public String getFilFileName() {
		return filFileName;
	}
	public void setFilFileName(String filFileName) {
		this.filFileName = filFileName;
	}
	public String getFilContentType() {
		return filContentType;
	}
	public void setFilContentType(String filContentType) {
		this.filContentType = filContentType;
	}
	public String getSavePath() {
		return savePath;
	}
	public void setSavePath(String savePath) {
		this.savePath = savePath;
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
