<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reportadd.jsp' starting page</title>
    
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
  	<a href="report!list.action">日志列表</a>
  	<form action="report!upd.action" method="post">
    <table align="center" border="1" cellspacing="1" >
    	<tr>
    		<td>
    			员工
    			<input type="hidden" name="report.rid" value="${report.rid }"/>
    		</td>
    		<td>
    			<select name="reportperson">
	    			<c:forEach items="${list}" var="emp">
	    				<option ${emp.ENAME==sname?'selected':'' }>${emp.ENAME }</option>
	    			</c:forEach>
    			</select>
    		</td>
    	</tr>
    	<tr>
    		<td>
    			日期
    		</td>
    		<td>
    			<input type="text" id="time"   name="report.rdate" value="${report.rdate}" />
    		</td>
    	</tr>
    	<tr>
    		<td>
    			日志内容
    		</td>
    		<td>
    			<textarea name="report.rsummary" rows="10" cols="20">${report.rsummary }</textarea>
    		</td>
    	</tr>
    	<tr align="center">
    		<td colspan="2">
    			<input type="submit" value="添加" />
    		</td>
    	</tr>
    </table>
    </form>
  </body>
</html>
