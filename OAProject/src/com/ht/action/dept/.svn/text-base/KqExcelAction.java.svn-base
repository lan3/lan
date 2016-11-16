package com.ht.action.dept;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.vo.emp.Kaoqin;

import jxl.Sheet;
import jxl.Workbook;

public class KqExcelAction extends BaseAction{
	private File file;
	private String fileFileName;
	public String list(){
		List list= selkaoqinlist();
		List li=selkaoqintime();
		List l=selkaoqinename();
		setValToRequest("l", l);
		setValToRequest("li", li);
		setValToRequest("list", list);
		setValToRequest("num", list.size());
		return "tolist";
	}
	public String add(){
		 try {
            Workbook rwb=Workbook.getWorkbook(file);
            Sheet rs=rwb.getSheet(0);//或者rwb.getSheet(0)
            int clos=rs.getColumns();//得到所有的列
            int rows=rs.getRows();//得到所有的行
            System.out.println(clos+" rows:"+rows);
            String time=rs.getCell(0,1).getContents();
           //获取日期
            String ymonth=time.substring(time.indexOf("统计日期：")+5, time.indexOf("-01"));
            
            List list=new ArrayList();  //员工表头
            for (int i = 3; i <23; i=i+2) {    
            	list.add(rs.getCell(0,i).getContents());
			}
            
            List emplist=new ArrayList();   //员工名称
            for (int i = 0; i < list.size(); i++) {  
            	String str=(String) list.get(i);
            	emplist.add(str.substring(str.indexOf("姓名: ")+4, 17).trim());
			}
            
           //根据员工获取打卡时间
           //获取登录用户id name
           int eid= Integer.parseInt(ServletActionContext.getRequest().getSession().getAttribute("id")+"");
           String name=ServletActionContext.getRequest().getSession().getAttribute("name")+"";
           System.out.println("name :"+name);
           List  timelist=new ArrayList();
           for (int i = 0; i < emplist.size(); i++) {
        	   
        	   if(name==emplist.get(i)||name.equals(emplist.get(i))){
        		   int num=i;
        		   for (int j = 0; j <=30; j++) {
        			   timelist.add(rs.getCell(j,2*num+4).getContents());
        		   }
        	   }else if(name!=emplist.get(i)&&!name.equals(emplist.get(i))){
        		   setValToRequest("msg", "不好意思,没有您的考勤记录呦！");  //没有记录
        		   return "tolist";
        	   }
           }
           for (int i = 0; i < timelist.size(); i++) {
            	Kaoqin kq=new Kaoqin();
            	//根据name获取员工ID
            	kq.setEid(eid);
				kq.setDays(i+1);
				kq.setEname(name);
				kq.setYmonth(new SimpleDateFormat("yyyy-MM").parse(ymonth));
				kq.setKqday(26); //默认26天考勤时间
				kq.setKtime(timelist.get(i)+"");
				if(timelist.get(30)!=null&&!timelist.get(30).equals("")){
					String money=timelist.get(30)+"";
					System.out.println(money);
					System.out.println(timelist.get(30));
					//设置考勤奖
					kq.setKmoney(Integer.parseInt(money.substring(money.indexOf("奖励")+2, money.indexOf("元"))+""));
				}
            	Exceladd(kq);
			}
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } 
        return list();
	}
	public String listall(){
		Map m=new HashMap();
		List list= selkaoqinlists();//天数
		List lil=selkaoqintimes();//打卡时间
		
		List l=selkaoqinenames();//名字ID
		
		for (int i = 0; i < l.size(); i++) {
			List li=new ArrayList();
			String k=((Map)l.get(i)).get("ENAME")+"";
			System.out.println(" k ："+k);
			li=selkaoqintimes(k); //每个用户的考勤时间
			m.put(k, li);
			setValToRequest("li"+k, li);
		}
		setValToRequest("m", m);
		setValToRequest("l", l);
		setValToRequest("lil", lil);
		setValToRequest("list", list);
		setValToRequest("num", list.size());
		return "toalllist";
	}
	public String addall(){
		 try {
	            Workbook rwb=Workbook.getWorkbook(file);
	            Sheet rs=rwb.getSheet(0);//或者rwb.getSheet(0)
	            int clos=rs.getColumns();//得到所有的列
	            int rows=rs.getRows();//得到所有的行
	            System.out.println(clos+" rows:"+rows);
	            String time=rs.getCell(0,1).getContents();
	           //获取日期
	            String ymonth=time.substring(time.indexOf("统计日期：")+5, time.indexOf("-01"));	
	            
	            List list=new ArrayList();  //员工表头
	            for (int i = 3; i <=23; i=i+2) {    
	            	list.add(rs.getCell(0,i).getContents());
				}
	            
	            List emplist=new ArrayList();   //员工名称
	            for (int i = 0; i < list.size(); i++) {  
	            	String str=(String) list.get(i);
	            	emplist.add(str.substring(str.indexOf("姓名: ")+4, 17).trim());
				}
	            System.out.println("empsize :"+emplist.size());
	           //根据员工获取打卡时间
	           List empeid=new ArrayList();  //员工ID
	           for (int i = 0; i < emplist.size(); i++) {
	        	   List li = enamefind(emplist.get(i)+"");
        		   Map m=(Map) li.get(0);
        		   empeid.add(Integer.parseInt(m.get("EID")+""));
	           }
	           System.out.println("eid :"+empeid.size());
	           for (int i = 0; i < emplist.size(); i++) {
	        	   List timelist=new ArrayList();
	        	   for (int j = 0; j <=30; j++) {
        			   timelist.add(rs.getCell(j,2*i+4).getContents());
        		   }
	        	   System.out.println("timesize: "+timelist.size());
	        	   for (int j = 0; j < timelist.size(); j++) {
	        		  Kaoqin k=new Kaoqin();
	 				  k.setEid(Integer.parseInt(empeid.get(i)+""));
	 				  k.setEname(emplist.get(i)+"");
	 				  k.setYmonth(new SimpleDateFormat("yyyy-MM").parse(ymonth));
	 				  k.setDays(j+1);
	 				  k.setKtime(timelist.get(j)+"");
	 				  k.setKqday(26);
	 				  if(timelist.get(timelist.size()-1)!=null&&!timelist.get(timelist.size()-1).equals("")){
	 					 k.setKmoney(100);
	 				  }else{
	 					 k.setKmoney(0);
	 				  }
	 				  Exceladd(k);
	        	   }
	           }
	        } catch (Exception e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } 
		return listall();
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
