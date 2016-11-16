package com.ht.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ht.common.find;
import com.opensymphony.xwork2.ActionContext;

//基础类
public class BaseAction extends find{
	public Object getService(String serviceName){
		//解析xml文件获取service
		ApplicationContext context= new ClassPathXmlApplicationContext("config-resource/applicationContext.xml");
		return context.getBean(serviceName);
	}
	//设置值到request作用域中
	public void setValToRequest(String name,Object o){
		HttpServletRequest request= ServletActionContext.getRequest();
		request.setAttribute(name, o);
	}
	//设置值到session作用域中
	public void setValToSession(String name,Object o){
		ServletActionContext.getRequest().getSession().setAttribute(name, o);
	}
	public Object[] getValFromTable(String name){
		Object[] obj=(Object[]) ActionContext.getContext().getParameters().get(name);
		return obj;
	}
	
}
