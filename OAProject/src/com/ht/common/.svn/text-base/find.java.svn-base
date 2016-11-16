package com.ht.common;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.ht.vo.emp.Kaoqin;
import com.ht.vo.emp.Limit;

import com.ht.vo.stu.Student;

public class find extends Hibrenate_Dao{
	//查找员工通讯录
	public List empphon(){
		
		return listbysql("select etel,ename from emp where rownum<6 and eid not in 1000");
	}
	//查找教员
	public List enamefind(){
		List list=listbysql("select ename,eid from emp where ejob like '%讲师' or ejob like '%老师'"); 
		return list;
	}
	//查找员工数
	public int empcount(){
		return listbysql("select * from emp").size();
	}
	//查找学生数
	public int stucount(){
		
		return listbysql("select * from student").size();
	}
	//查找班级数
	public int classcount(){
		
		return listbysql("select * from classes").size();
	}
	//查找课程数
	public int objectcount(){
		
		return listbysql("select * from object").size();
	}
	//查询班主任
	public List selbzr(){
		return listbysql("select * from emp where ejob='班主任'");
	}
	//查找员工列表   去除管理员 和自己
	public List empfind(){
		List list=listbysql("select ename,eid from emp where eid !=1000 ");
		return list;
	}
	//根据姓名查找员工id
	public List enamefind(String name){
		return listbysql("select eid from emp where ename='"+name+"'");
	}
	//根据员工id查找姓名
	public List eidfind(int id){
		return listbysql("select ename from emp where eid="+id);
	}
	//根据员工id查找姓名
	public List stufind(int id){
		return listbysql("select sname from student where sid="+id);
	}
	
	//查找班级列表
	public List classfind(){
		List list=listbysql("select distinct classname from classes");
		return list;
	}
	//根据班级查找班级人数
	public List countfind(String cname){
		List list=listbysql("select classcount from classes where classname='"+cname+"'");
		return list;
	}
	//根据班级查找班级任课老师
	public List teacherfind(String cname){
		List list=listbysql("select distinct classname,empteach from classes where classname='"+cname+"'");
		return list;
	}
	//查找班级任课老师
	public List teacherfind(){
		List list=listbysql("select distinct empteach from classes");
		return list;
	}
	
	//查找宿舍列表
	public List hoursefind(){
		List list=listbysql("select distinct hourseat from hourse");
		return list;
	}
	//根据宿舍查找宿舍号
	public List hcountfind(String cname){
		List list=listbysql("select hourmark from hourse where hourseat='"+cname+"'");
		return list;
	}
	//根据宿舍查找宿舍号
	public List hcountfind(){
		List list=listbysql("select distinct hourmark from hourse ");
		return list;
	}
	//根据宿舍号查找宿舍人数
	public List hcountsfind(String num){
		List list=listbysql("select hcount from hourse where hourmark='"+num+"'");
		return list;
	}

	//查找值班老师电话
	public List telfind(){
		List list=listbysql("select distinct w.wtel,e.ename from workdoing w,emp e where e.eid=w.eid");
		return list;
	}
	//查找职位
	public List findejob(){
		return listbysql("select distinct ejob from EMP");
	}
	public List seldate(){
		return listbysql("select rdate from report ");
	}
	
	//日志查看按日期
	public List selbydate(String t1,String t2){
		return listbysql("select * from report where rdate between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd')");
	}
	public List selbydates(String t1,String t2,int currpage,int pagecount){
		return pagelistbysql("select * from report where rdate between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd')", (currpage-1)*pagecount, pagecount);
	}
	 public List selbyname(int eid){
		 return listbysql("select * from report where eid="+eid);
	 }
	 public List selbynames(int eid,int currpage,int pagecount){
		 return pagelistbysql("select * from report where eid="+eid, (currpage-1)*pagecount, pagecount);
	 }
	 
	public List selbyweek(String t1,String t2){
		return listbysql("select * from report where rdate between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd')");
	}
	public List selbyweeks(String t1,String t2,int currpage,int pagecount){
		return pagelistbysql("select * from report where rdate between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd')", (currpage-1)*pagecount, pagecount);
	}
	 
	 public List patrolbydate(String t1,String t2){
			return listbysql("select * from patrol where pdatetime between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd')");
	} 
	 
	 //请假
	 public List leavebyeid(int eid){
		 return listbysql("select * from leave where eid="+eid+"and sid="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
	 }
	 public List leavebytime(String t1,String t2){
		 if(t1.equals(t2)){
			 return listbysql("select * from leave where lstarttime =to_date('"+t1+"','yyyy-mm-dd') and sid="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
		 }else{
			 return listbysql("select * from leave where lstarttime between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd') and sid="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
		 }
	}
	 public List leavebyweek(String t1,String t2){
		 return listbysql("select * from leave where lstarttime between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd') and sid="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
	 }
	 public List leavesel(){
		 return listbysql("select * from leave where lstatus !='待审核' and sid="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
	 }
	 //加班
	 public List overbyeid(int eid){
		 return listbysql("select * from overtime where eid="+eid+" and osid="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
	 }
	 public List overbytime(String t1,String t2){
		 if(t1.equals(t2)){
			 return listbysql("select * from overtime where ostart=to_date('"+t1+"','yyyy-mm-dd') and osid="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
		 }else{
			 return listbysql("select * from overtime where ostart between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd') and osid="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"")); 
		 }
	 }
	 public List overbyweek(String t1,String t2){
		 return listbysql("select * from overtime where ostart between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd') and osid="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
	 }
	 public List oversel(){
		 return listbysql("select * from overtime where ostatus!=1 and osid="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
	 }
	 //考勤
	 public List kaoqinlist(int id){
		 return listbysql("select * from workcheckdesc where eid="+id+" and dup="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
	 }
	 public List kaoqinlists(int id,int currpage,int pagecount){
		 return pagelistbysql("select * from workcheckdesc where eid="+id+" and dup="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""), (currpage-1)*pagecount, pagecount);
	 }
	 public List kaobyeid(){
		 return listbysql("select * from workcheckdesc where dstatus!=1 and dup="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
	 }
	 public List kaobyeids(int currpage,int pagecount){
		 return pagelistbysql("select * from workcheckdesc where dstatus!=1 and dup="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""), (currpage-1)*pagecount, pagecount);
	 }
	 public List kaobytime(String t1,String t2){
		 if(t1.equals(t2)){
			 return listbysql("select * from workcheckdesc where edate = to_date('"+t1+"','yyyy-mm-dd') and dup="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"")); 
		 }else{
			 return listbysql("select * from workcheckdesc where edate between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd') and dup="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
		 }
	 }
	 public List kaobytimes(String t1,String t2,int currpage,int pagecount){
		 if(t1.equals(t2)){
			 return pagelistbysql("select * from workcheckdesc where edate = to_date('"+t1+"','yyyy-mm-dd') and dup="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""), currpage, pagecount);
		 }else{
			 return pagelistbysql("select * from workcheckdesc where edate between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd') and dup="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""), currpage	, pagecount);
		 }
	 }
	 public List kaobyweek(String t1,String t2){
		 return listbysql("select * from workcheckdesc where edate between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd') and dup="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
	 }
	 public List kaobyweeks(String t1,String t2,int currpage,int pagecount){
		 return pagelistbysql("select * from workcheckdesc where edate between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd') and dup="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""), (currpage-1)*pagecount, pagecount);
	 }
	 //查看班级巡查
	 public List patrolbysql(){
		return listbysql("select * from patrol");
	 }
	 //
	 public List patrolbyname(String name){
			return listbysql("select * from patrol where pclass='"+name+"'");
	 } 
	 //
	 public List patrolbyeid(int name){
			return listbysql("select * from patrol where eid="+name);
	 } 
	 //查看宿舍巡查
	 public List patrolshusebyname(String hname,String hnum ){
			return listbysql("select * from patrolshuse where hoursename='"+hname+"' and hoursenum ='"+hnum+"'");
	 } 
	 
	 public List patrolshuse(){
			return listbysql("select * from patrolshuse");
	 }  
	 public List patrolshuseselbydate(String t1,String t2){
			return listbysql("select * from patrolshuse where hdate between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd')");
	 }
	 //值班
	 public List dutylist(){
		 return listbysql("select * from duty");
	 }
	 public List dutylistbyid(int id){
		 return listbysql("select * from duty where eid="+id);
	 }
	 public List dutybydate(String t1,String t2){
			return listbysql("select * from duty where edatetime between to_date('"+t1+"','yyyy-mm-dd') and to_date('"+t2+"','yyyy-mm-dd')");
	} 
	 //查询6条值班
	 public List wdolist(){
		 return list("from Workdoing  where rownum<7");
	 }
	 //查询10条通知
	 public List msglist(){
		 return list("from Msg  where msgface=1 and rownum<10 and msgstatus=0");
	 }
	 
	 //修改学生表反馈状态
	 public void stuupd(Student stu){
		 updateObj(stu);
	 }
	 //查找学生
	 public Student getstu(Integer sid){
		 
		 return (Student) getObj(Student.class, sid);
	 }
	 //根据班级，老师，学生查是否反馈
	 public boolean isfacu(String ename,String cname,Integer stuid){
		List list=listbysql("select * from faculymff where fclass='"+cname+"' and ename='"+ename+"' and stuid="+stuid);
		if(list==null||list.size()==0){
			return false;
		}
		return true;
	 }
	 //请假审批
	 public List listbystatus(int id){
		 return listbysql("select * from leave where sid="+id+"and lstatus='待审核'");
	 }
	 
	 //加班审批
	 public List overtimesel(int id){
		 return listbysql("select * from overtime where osid="+id+"and ostatus=1");
	 }
	 //考勤审批
	 public List wchecksel(int id){
		 return listbysql("select * from workcheckdesc where dup="+id+"and dstatus=1");
	 }
	 public List wchecksels(int id,int currpage,int pagecount){
		 return pagelistbysql("select * from workcheckdesc where dup="+id+"and dstatus=1", currpage, pagecount);
	 }
	 //备用电脑审批
	 public List compulist(String name){
		 return listbysql("select * from computers  where empteach='"+name+"' and starts='待审批'");
	 }
	 //学生请假审批
	 public List stulevelist(String name){
		 
		 return listbysql("select * from stuleve where empteach='"+name+"' and starts='待审批'");
	 }
	 //权限
	 public List selallemp(){
		 return listbysql("select * from emp");
	 }
	 public List selallemps(int currpage,int pagecount ){
		 return pagelistbysql("select * from emp", (currpage-1)*pagecount, pagecount);
	 }
	 public List selLimit(int id){
		return listbysql("select * from limit where eid="+id);
	 }
	 public List selmid(int id){
		 return listbysql("select mid from limit where eid="+id);
	 }
	 
	 public boolean delLimit(int id){
		 return delbysql("delete limit where eid="+id);
	 }
	 public boolean addLimit(Limit l){
		 return addObj(l);
	 }
	 public boolean updLimit(Limit l){
		 return updateObj(l);
	 }
	 
	 
	//查询10条通知
	
	 public List mlist(){
		 
		 return list("from Msg  where msgface=0 and rownum<10 and  msgstatus=0");
	 }
	 //学生请假审批
	 public List stuleavelist(String name){
		 return listbysql("select * from stuleve where empteach ='"+name+"'");
	 }
	 public List listclasses(){
		 return listbysql("select * from classes");
	 }
	 public List deptclass(){
		 
		 return listbysql("");
	 }
	 //备用电脑申请
	 public List Comlist(String name){
		 
		 return listbysql("select * from computers where empteach='"+name+"' ");
	 }
	 public List Comclass(){
		 
		 return listbysql("select * from classes");
	 }
	//考勤excel表格导入
	 public boolean Exceladd(Kaoqin kq){
		 return addObj(kq);
	 }
	 public List selkaoqinlist(){
		 return list("from Kaoqin where eid="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
	 }
	 //查询打卡时间
	 public List selkaoqintime(){
		 return listbysql("select ktime from kaoqin where  eid="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"")+" order by days");
	 }
	 //查询考勤对象
	 public List selkaoqinename(){
		 return listbysql("select distinct ename,eid from kaoqin where eid="+Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+""));
	 }
	 
	 public List selkaoqinlists(){
		 return listbysql("select  distinct days from kaoqin order by days");
	 }
	 //查询打卡时间
	 public List selkaoqintimes(String name){
		 return listbysql("select ktime from kaoqin where ename='"+name+"' order by days");
	 }
	//查询打卡时间
	 public List selkaoqintimes(){
		 return listbysql("select ktime from kaoqin  order by days");
	 }
	 //查询考勤对象
	 public List selkaoqinenames(){
		 return listbysql("select distinct ename,eid from kaoqin ");
	 }
} 
