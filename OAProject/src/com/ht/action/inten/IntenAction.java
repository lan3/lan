package com.ht.action.inten;

import java.util.List;

import com.ht.action.BaseAction;
import com.ht.service.inten.IntenSerice;
import com.ht.vo.emp.Emp;
import com.ht.vo.inten.Inten;
import com.ht.vo.stu.Classes;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
public class IntenAction extends BaseAction{

	
//	http://localhost:8080/OAProject/inten.jsp
	private Inten  inte;
	private List  list;
	public  Emp  emp;
	private int currpage=1;
	private int pagecount=9;
	private int totalpage=0;
	private int totalrow=0;
	
	HttpServletRequest  request =ServletActionContext.getRequest();
	IntenSerice  is=(IntenSerice)getService("intenService");

	
	
	//查询学生(分页)
	public String intelist(){
		totalrow=is.count();
		totalpage=(totalrow+pagecount-1)/pagecount;
		HttpServletRequest request= ServletActionContext.getRequest();
		String pages= request.getParameter("page");
		if(pages!=null&&!pages.equals("")){
			currpage=Integer.parseInt(pages);
		}
		if(currpage<1){
			currpage=1;
		}
		if(currpage>totalpage){
			currpage=totalpage;
		}
		list=is.intelist(currpage, pagecount);
		
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		request.setAttribute("list", list);
		return "tolist";
	}
	
	
	public String  addinten(){
		
		System.out.println("进来了  add");
		System.out.println("联系电话："+inte.getIntentel());
		System.out.println("家庭住址："+inte.getIntenaddr());
	
		
		is.addinten(inte);
		return  intelist();
	}
	
	
	public  String  toupd(){
		System.out.println("点击的id为"+inte.getIntendid());
		Inten  inten=is.getinteid(inte.getIntendid());
		list=is.selename();//传递老师姓名
		System.out.println("inid"+inten.getIntendid());
		request.setAttribute("list", list);
		ServletActionContext.getRequest().setAttribute("inte", inten);
		return  "toupd";
	}

	
	public String upd(){
		System.out.println("进来了upd");
		System.out.println("123:"+ServletActionContext.getRequest().getParameter("inte.intendid"));
		inte.setIntendid(Integer.parseInt(ServletActionContext.getRequest().getParameter("inte.intendid")+""));
		is.updinte(inte);
		System.out.println(inte.getIntenaddr());
		return  intelist();
	}
	
	public String  del(){
		System.out.println("进来了del");
		Inten inten=is.getinteid(inte.getIntendid());
		is.delinte(inten);
		return  intelist();
		
	}
	
	public String  enamelist(){
		list=is.selename();
		if(list.size()>0){
			request.setAttribute("list", list);
			return  "add";
		}
		return  null;
	}
	
	
	public Inten getInte() {
		return inte;
	}

	public void setInte(Inten inte) {
		this.inte = inte;
	}

	public List getList() {
		return list;
	}

	
	public void setList(List list) {
		this.list = list;
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


	public int getTotalpage() {
		return totalpage;
	}


	public void setTotalpage(int totalpage) {
		this.totalpage = totalpage;
	}


	public int getTotalrow() {
		return totalrow;
	}
	
	public void setTotalrow(int totalrow) {
		this.totalrow = totalrow;
	}


	public Emp getEmp() {
		return emp;
	}


	public void setEmp(Emp emp) {
		this.emp = emp;
	}


	
	
}
