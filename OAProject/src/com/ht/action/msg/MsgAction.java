package com.ht.action.msg;

import java.io.File;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import java.util.List;


import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.ht.action.BaseAction;
import com.ht.service.msg.msgemp;
import com.ht.vo.inten.Inten;
import com.ht.vo.msg.Msg;

public class MsgAction extends BaseAction {

	private List list ;
	public Msg msg;
	
	int pagecount;
	int currpage;
	int totalpage;
	int totalrow;

	msgemp mm = (msgemp) getService("msgservice");
	
	
	// 定义一个file类型来封装页面的file标签
	private File msgaccessory;
	
	// 定义一个字符串来自动获取文件名称
	private String msgaccessoryFileName;
	
	// 定义一个字符串来自动获取文件类型
	private String msgaccessoryContentType;
	
	//获取项目发布的路径
	private String savePath=
						ServletActionContext.getRequest().getRealPath("imgs")+"\\";

	// 下载的图片路径
	private String savepath2 = 
						ServletActionContext.getRequest().getRealPath("/imgs")+ "\\";
	
	private String fname;
	


	public String list() {
	
		list=mm.msglist();
	
		this.setValToRequest("list", list);
		
		return "to_msg";
	}

	public String tolist(){
		list=mm.msglist();
		pagecount=10;//每页个数
		 totalpage=list.size();//总条数
		 totalrow=(totalpage+pagecount-1)/pagecount;//总页数
		if(currpage<0){
			currpage=0;
		}
		if(currpage>=totalrow){
			currpage=totalrow-1;
		}
	
		setValToRequest("list", list);
		return null;
	}
	
	
	public String add() {
	
//		System.out.println(" 文件名称  " + msgaccessoryFileName);
//		System.out.println("文件类型 " + msgaccessoryContentType);
//		System.out.println("保存路径 " + savePath);
		
		try {
				FileOutputStream fos = new FileOutputStream(this.savePath
						+ msgaccessoryFileName);
				
				FileInputStream fis = new FileInputStream(this.msgaccessory);

				msg.setMsgaccessory("imgs/"+msgaccessoryFileName);
				mm.msgadd(msg);
				System.out.println( fis );
				byte[] bs = new byte[1024];
				int real = fis.read(bs);
				while (real > 0) {
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
		
		System.out.println(msg.getMsgid());
		return list();
	}
	
	
public String down() throws Exception {
	    String str = new String(ServletActionContext.getRequest().getParameter("fname").getBytes("iso-8859-1"),"utf-8");
		str=str.substring(str.indexOf("/")+1, str.length());
		System.out.println("str "+ str);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.reset();
		String filepath = savepath2 + str;
		System.out.println("filepath :"+filepath);
		// 设置response的Header
		response.addHeader("Content-Disposition", "attachment;filename="
				+ URLEncoder.encode(str, "UTF-8"));
		FileInputStream fileinput = new FileInputStream(filepath);
		System.out.println(fileinput);
		OutputStream output = response.getOutputStream();
		byte[] bs = new byte[1024];
		int real = fileinput.read(bs);
		while (real > 0) {
			output.write(bs, 0, real);
			real = fileinput.read(bs);
		}
		output.close();
		fileinput.close();
		return null;
	}
	
	
	
	public  String  sel(){
		//list=mm.msglist();
		
		//this.setValToRequest("list", list);
		Msg  m=mm.getid(msg.getMsgid());
		setValToRequest("m", m);
		return  "to_sel";
		
	}

	
	
	public  String  toupd(){

		Msg  m=mm.getid(msg.getMsgid());
		setValToRequest("m", m);
		return  "to_upd";
		
	}
	
	
	public String upd(){
		if(this.fname==null){
			this.fname=msg.getMsgaccessory();
			msg.setMsgaccessory("imgs/"+ this.msgaccessoryFileName);
		}else{
			try {
				FileOutputStream fos = new FileOutputStream(this.savePath
						+ this.msgaccessoryFileName);
				
				FileInputStream fis = new FileInputStream(this.msgaccessory);

				
				msg.setMsgaccessory("imgs/"+ this.msgaccessoryFileName);
				mm.msgadd(msg);
				System.out.println( fis );
				byte[] bs = new byte[1024];
				int real = fis.read(bs);
				while (real > 0) {
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
		
		mm.msgupd(msg);
		System.out.println(msg.getMsgid());
		return  list();
	}
	
	
	public String del(){

		mm.getid(msg.getMsgid());
		mm.msgdel(msg);
		
		return list();
	}

	public String listq(){
		list=mm.lists();
		System.out.println("MsgAction.cslist()");
		this.setValToRequest("lists", list);
		
		return "to_s";
	}

		
	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public Msg getMsg() {
		return msg;
	}

	public void setMsg(Msg msg) {
		this.msg = msg;
	}


	public File getMsgaccessory() {
		return msgaccessory;
	}


	public void setMsgaccessory(File msgaccessory) {
		this.msgaccessory = msgaccessory;
	}


	public String getMsgaccessoryFileName() {
		return msgaccessoryFileName;
	}


	public void setMsgaccessoryFileName(String msgaccessoryFileName) {
		this.msgaccessoryFileName = msgaccessoryFileName;
	}


	public String getMsgaccessoryContentType() {
		return msgaccessoryContentType;
	}


	public void setMsgaccessoryContentType(String msgaccessoryContentType) {
		this.msgaccessoryContentType = msgaccessoryContentType;
	}


	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public int getPagecount() {
		return pagecount;
	}


	public void setPagecount(int pagecount) {
		this.pagecount = pagecount;
	}


	public int getCurrpage() {
		return currpage;
	}


	public void setCurrpage(int currpage) {
		this.currpage = currpage;
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



}
