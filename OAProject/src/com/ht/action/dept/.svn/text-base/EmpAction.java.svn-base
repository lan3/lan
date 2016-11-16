package com.ht.action.dept;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.transaction.JOnASTransactionManagerLookup;

import com.ht.action.BaseAction;
import com.ht.service.dept.DeptService;
import com.ht.service.dept.EmpService;
import com.ht.vo.emp.Emp;
import com.ht.vo.emp.Family;
import com.ht.vo.emp.Jobs;
import com.ht.vo.emp.Patrol;

public class EmpAction extends BaseAction{
	private Emp emp;
	private Jobs jobs;
	private Family family;
	private Object eid;
	private Object fid;
	private Object jid;
	private int currpage=1;
	private int pagecount=8;
	private int totalpage=0;
	private int totalrow=0;
	//获取文件
	private File file;
	//获取文件名称
	private String fileFileName;
	//获取文件类型
	//文件存储路径     System.getProperty("file.separator"):自动区分系统盘符    window: \  linux:/  
	private String savePath=ServletActionContext.getRequest().getRealPath("/img")+ "\\";
	EmpService es=(EmpService) getService("empservice");
	DeptService ds=(DeptService) getService("deptservice");
	public String seldept(){
		List list= ds.seldept();
		System.out.println("size::"+list.size());
		setValToRequest("list", list);
		return "toempinfo";
	}
	public String list(){
		totalrow=es.emplists().size();
		totalpage=(totalrow+pagecount-1)/pagecount;
		//获取页面传来的页码
		HttpServletRequest request= ServletActionContext.getRequest();
		String pages=request.getParameter("page");
		if(pages!=null&&!pages.equals("")){
			currpage=Integer.parseInt(pages);
		}
		if(currpage<1){
			currpage=1;
		}
		if(currpage>=totalpage){
			currpage=totalpage;
		}
		List list= es.emplist(currpage,pagecount);
		setValToRequest("list", list);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("currpage", currpage);
		request.setAttribute("totalrow", totalrow);
		return "toemplist";
	}
	
	
	public String add(){
		try {
			FileOutputStream fos = new FileOutputStream(this.savePath + this.fileFileName);
			FileInputStream fis = new FileInputStream(this.file);
			System.out.println("files++++"+this.file);
			System.out.println(fileFileName);
			emp.setEimg(fileFileName);
			byte[] bs = new byte[1024];
			int real = fis.read(bs);
			while(real > 0){
				fos.write(bs, 0, real);
				real = fis.read(bs);
			}
			fos.close();
			fis.close();
		} catch (FileNotFoundException e) {

			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		 Random  random=new Random();
		 Double a=random.nextDouble()*1000000;
		 System.out.println("  a  "+a);
		 String  ename=a+"";
		 String eename=ename.substring(0, 6);
		 System.out.println("账号为"+eename);
		 emp.setEename(eename);

		boolean bln= es.addemp(emp);
		if(bln){ //保存成功
			List list=es.geteid(emp.getEqq());
			 //查询出eid
			for (int i = 0; i < list.size(); i++) {
				Map m=(HashMap)list.get(i);
				eid=m.get("EID");
			}
			//工作表
			 String jcom[]=(String []) getValFromTable("jobs.jcompany");
			 String jwork[]=(String []) getValFromTable("jobs.jwork");
			 String jreason[]=(String []) getValFromTable("jobs.jreason");
			 String jmoney[]=(String []) getValFromTable("jobs.jmoney");
			 
			 //成员表
			 String fname[]=(String []) getValFromTable("family.fname");
			 String frelation[]=(String []) getValFromTable("family.frelation");
			 String fcompany[]=(String []) getValFromTable("family.fcompany");
			 String fjob[]=(String []) getValFromTable("family.fjob");
			 String ftel[]=(String []) getValFromTable("family.ftel");
			 String fbeizhu[]=(String []) getValFromTable("family.fbeizhu");
			 
			 
			 
			for (int i = 0; i < jcom.length; i++) {  //添加工作经历
				Jobs j= new Jobs();
				if(jcom[i]!=null&&!jcom[i].equals("")){ //判断不能为空
					j.setEid(Integer.parseInt(eid+""));
					j.setJcompany(jcom[i]);
					j.setJmoney(jmoney[i]);
					j.setJreason(jreason[i]);
					j.setJwork(jwork[i]);
					es.addjobs(j);
				}
			}
			
			for (int i = 0; i < fname.length; i++) {//添加联系人
				Family f=new Family();
				if(fname[i]!=null&&!fname[i].equals("")){ //判断不能为空
					f.setEid(Integer.parseInt(eid+""));
					f.setFbeizhu(fbeizhu[i]);
					f.setFcompany(fcompany[i]);
					f.setFjob(fjob[i]);
					f.setFname(fname[i]);
					f.setFrelation(frelation[i]);
					f.setFtel(ftel[i]);
					es.addfamily(f);
				}
			}
		}
		return list();
	}
	// 多个删除del
	public String dels(){
		String str=ServletActionContext.getRequest().getParameter("dids");
		String strs[]=str.split(",");
		for (int i = 0; i < strs.length; i++) {
			boolean r=es.delemp(Integer.parseInt(strs[i]+""));//删除员工
			if(r){
				boolean bln2= es.deljobs(Integer.parseInt(strs[i]+"")); //删除工作经历
				if(bln2){
					 es.delfamily(Integer.parseInt(strs[i]+"")); //删除联系人
				 }
			} 
		}
		return list();
	}
	//删除
	public String del(){
		 boolean bln=es.delemp(emp.getEid());  //删除员工
		 if(bln){ 
			 boolean bln2= es.deljobs(emp.getEid()); //删除工作经历
			 if(bln2){
				 es.delfamily(emp.getEid()); //删除联系人
			 }
		 }
		 return list();
	}
	//去修改
	public String upd(){
		List list= ds.seldept(); //部门list
		setValToRequest("list", list);
		Emp e= es.selemp(emp.getEid());
		List flist= es.selfamily(emp.getEid());
		List jlist= es.seljobs(emp.getEid());
		int fsize=flist.size();
		int jsize=jlist.size();
		setValToRequest("emp", e);
		setValToRequest("flist", flist);
		setValToRequest("jlist", jlist);
		setValToRequest("fsize", fsize);
		setValToRequest("jsize", jsize);
		return "toupd";
	}
	//修改
	public String update(){
		 String fid[]=(String [])getValFromTable("family.fid");
		 String jid[]=(String [])getValFromTable("jobs.jid");
		//工作表
		 String jcom[]=(String []) getValFromTable("jobs.jcompany");
		 String jwork[]=(String []) getValFromTable("jobs.jwork");
		 String jreason[]=(String []) getValFromTable("jobs.jreason");
		 String jmoney[]=(String []) getValFromTable("jobs.jmoney");
		 
		 //成员表
		 String fname[]=(String []) getValFromTable("family.fname");
		 String frelation[]=(String []) getValFromTable("family.frelation");
		 String fcompany[]=(String []) getValFromTable("family.fcompany");
		 String fjob[]=(String []) getValFromTable("family.fjob");
		 String ftel[]=(String []) getValFromTable("family.ftel");
		 String fbeizhu[]=(String []) getValFromTable("family.fbeizhu");
		 System.out.println("emp img" +emp.getEimg());
		 if(this.fileFileName==null){
			 this.fileFileName=emp.getEimg();
		 }else{
			 System.out.println("file :"+this.file);
			 System.out.println(this.fileFileName);
			 try {
					FileOutputStream fos = new FileOutputStream(this.savePath + this.fileFileName);
					FileInputStream fis = new FileInputStream(this.file);
					System.out.println(fileFileName);
					emp.setEimg(fileFileName);
					byte[] bs = new byte[1024];
					int real = fis.read(bs);
					while(real > 0){
						fos.write(bs, 0, real);
						real = fis.read(bs);
					}
					fos.close();
					fis.close();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		 }
		boolean b= es.updemp(emp);
		if(b){
			if(jid!=null&&!jid.equals("")){
				for (int i = 0; i < jid.length; i++) { //修改工作经历
					Jobs j= new Jobs();
					if(jcom[i]!=null&&!jcom[i].equals("")){ //判断不能为空
						if(jid[i]!=null&&!jid[i].equals("")){ //修改
							j.setJid(Integer.parseInt(jid[i]));
							j.setEid(Integer.parseInt(emp.getEid()+""));
							j.setJcompany(jcom[i]);
							j.setJmoney(jmoney[i]);
							j.setJreason(jreason[i]);
							j.setJwork(jwork[i]);
							es.updjobs(j);  
						}else{    //新增
							j.setEid(Integer.parseInt(emp.getEid()+""));
							j.setJcompany(jcom[i]);
							j.setJmoney(jmoney[i]);
							j.setJreason(jreason[i]);
							j.setJwork(jwork[i]);
							es.addjobs(j);
						}
						
					}
				} 
				for (int i = 0; i < fid.length; i++) {    //修改家人
					Family f=new Family();  
					if(fname[i]!=null&&!fname[i].equals("")){ //判断不能为空
						if(fid[i]!=null&&!fid[i].equals("")){
							f.setFid(Integer.parseInt(fid[i]));
							f.setEid(Integer.parseInt(emp.getEid()+""));
							f.setFbeizhu(fbeizhu[i]);
							f.setFcompany(fcompany[i]);
							f.setFjob(fjob[i]);
							f.setFname(fname[i]);
							f.setFrelation(frelation[i]);
							f.setFtel(ftel[i]);
							es.updfamily(f);
						}else{
							f.setEid(Integer.parseInt(emp.getEid()+""));
							f.setFbeizhu(fbeizhu[i]);
							f.setFcompany(fcompany[i]);
							f.setFjob(fjob[i]);
							f.setFname(fname[i]);
							f.setFrelation(frelation[i]);
							f.setFtel(ftel[i]);
							es.addfamily(f);
						}
					}
				}
			}
		}
		return list();
	}
	public String update2(){
		 String fid[]=(String [])getValFromTable("family.fid");
		 String jid[]=(String [])getValFromTable("jobs.jid");
		//工作表
		 String jcom[]=(String []) getValFromTable("jobs.jcompany");
		 String jwork[]=(String []) getValFromTable("jobs.jwork");
		 String jreason[]=(String []) getValFromTable("jobs.jreason");
		 String jmoney[]=(String []) getValFromTable("jobs.jmoney");
		 
		 //成员表
		 String fname[]=(String []) getValFromTable("family.fname");
		 String frelation[]=(String []) getValFromTable("family.frelation");
		 String fcompany[]=(String []) getValFromTable("family.fcompany");
		 String fjob[]=(String []) getValFromTable("family.fjob");
		 String ftel[]=(String []) getValFromTable("family.ftel");
		 String fbeizhu[]=(String []) getValFromTable("family.fbeizhu");
		 System.out.println("emp img" +emp.getEimg());
		 if(this.fileFileName==null){
			 this.fileFileName=emp.getEimg();
		 }else{
			 System.out.println("file :"+this.file);
			 System.out.println(this.fileFileName);
			 try {
					FileOutputStream fos = new FileOutputStream(this.savePath + this.fileFileName);
					FileInputStream fis = new FileInputStream(this.file);
					System.out.println(fileFileName);
					emp.setEimg(fileFileName);
					byte[] bs = new byte[1024];
					int real = fis.read(bs);
					while(real > 0){
						fos.write(bs, 0, real);
						real = fis.read(bs);
					}
					fos.close();
					fis.close();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		 }
		boolean b= es.updemp(emp);
		if(b){
			if(jid!=null&&!jid.equals("")){
				for (int i = 0; i < jid.length; i++) { //修改工作经历
					Jobs j= new Jobs();
					if(jcom[i]!=null&&!jcom[i].equals("")){ //判断不能为空
						if(jid[i]!=null&&!jid[i].equals("")){ //修改
							j.setJid(Integer.parseInt(jid[i]));
							j.setEid(Integer.parseInt(emp.getEid()+""));
							j.setJcompany(jcom[i]);
							j.setJmoney(jmoney[i]);
							j.setJreason(jreason[i]);
							j.setJwork(jwork[i]);
							es.updjobs(j);  
						}else{    //新增
							j.setEid(Integer.parseInt(emp.getEid()+""));
							j.setJcompany(jcom[i]);
							j.setJmoney(jmoney[i]);
							j.setJreason(jreason[i]);
							j.setJwork(jwork[i]);
							es.addjobs(j);
						}
						
					}
				} 
				for (int i = 0; i < fid.length; i++) {    //修改家人
					Family f=new Family();  
					if(fname[i]!=null&&!fname[i].equals("")){ //判断不能为空
						if(fid[i]!=null&&!fid[i].equals("")){
							f.setFid(Integer.parseInt(fid[i]));
							f.setEid(Integer.parseInt(emp.getEid()+""));
							f.setFbeizhu(fbeizhu[i]);
							f.setFcompany(fcompany[i]);
							f.setFjob(fjob[i]);
							f.setFname(fname[i]);
							f.setFrelation(frelation[i]);
							f.setFtel(ftel[i]);
							es.updfamily(f);
						}else{
							f.setEid(Integer.parseInt(emp.getEid()+""));
							f.setFbeizhu(fbeizhu[i]);
							f.setFcompany(fcompany[i]);
							f.setFjob(fjob[i]);
							f.setFname(fname[i]);
							f.setFrelation(frelation[i]);
							f.setFtel(ftel[i]);
							es.addfamily(f);
						}
					}
				}
			}
		}
		return "tomain";
	}
	public String sel(){
		List list= ds.seldept(); //部门list
		setValToRequest("list", list);
		Emp e= es.selemp(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
		List flist= es.selfamily(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
		List jlist= es.seljobs(Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
		int fsize=flist.size();
		int jsize=jlist.size();
		setValToRequest("emp", e);
		setValToRequest("flist", flist);
		setValToRequest("jlist", jlist);
		setValToRequest("fsize", fsize);
		setValToRequest("jsize", jsize);
		return "toupd2";
	}
	
	public Emp getEmp() {
		return emp;
	}
	public void setEmp(Emp emp) {
		this.emp = emp;
	}
	public Jobs getJobs() {
		return jobs;
	}
	public void setJobs(Jobs jobs) {
		this.jobs = jobs;
	}
	public Family getFamily() {
		return family;
	}
	public void setFamily(Family family) {
		this.family = family;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}
	
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
}
