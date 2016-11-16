<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bz.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    
<h1 align="center"><em>OA系统帮助</em></h1>
<h3 align="center">一、进来（退出）系统</h3>
<h5 align="center">1.打开浏览器，输入“http://localhost:8080/OAProject/login.jsp”</h5>
<h5 align="center">(如果访问学生主页，可以直接访问&quot;http://localhost:8080/OAProject/msg.jsp&quot;)</h5>
<h5 align="center">2.输入账号和密码点击登录</h5>
<h3 align="center">二、主页面</h3>
<p align="center">1顶部显示当前用户，当前时间和日期，帮助、关于和退出</p>
<p align="center">2.左边是菜单栏，显示工作模块</p>
<p align="center">3.右边是显示部分</p>
<p align="center">1,)显示值班表，最新消息，待办事项等等</p>
<p align="center">2,)当点击了左边工作模块时，显示左边栏目选中的子栏目</p>
  </body>
</html>
