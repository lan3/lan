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
    
    <title>My JSP 'duty.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
  </head>
  
  <body>
  	<form action="duty!upd.action" method="post">
   		<table align="center" border="1" >
   			<tr>
   				<th>员工姓名</th>
   				<th>值班日期</th>
   				<th>值班时间</th>
   				<th>值班范围</th>
   				<th>情况记录</th>
   			</tr>
   			<tr>
   				<td>
   					<select name="duty.eid">
   						<c:forEach items="${list}" var="emp">
   							<option value="${emp.EID }" ${emp.EID==duty.eid?'selected':'' }>${emp.ENAME }</option>
   						</c:forEach>
   					</select>
   					<input type="hidden" name="duty.did" value="${duty.did }">
   				</td>
   				<td><input type="text" id="d11" readonly="readonly" class="Wdate"
							onclick="WdatePicker()" value="${duty.edatetime }" name="duty.edatetime" /></td>
   				<td><input type="text" id="d12" readonly="readonly" class="Wdate"
							onclick="WdatePicker({dateFmt:'HH:mm:ss'})" value="${duty.dtime }" name="duty.dtime"/></td>
   				<td>
   					<select name="duty.drange">
   						<option value="二楼" ${duty.drange=='二楼'?'selected':'' }>二楼</option>
   						<option value="三楼" ${duty.drange=='三楼'?'selected':'' }>三楼</option>
   						<option value="四楼" ${duty.drange=='四楼'?'selected':'' }>四楼</option>
   						<option value="其他" ${duty.drange=='其他'?'selected':'' }>其他</option>
   					</select>
   				</td>
   				<td><textarea name="duty.descs" cols="20" rows="10">${duty.descs }</textarea></td>
   			</tr>
   			<tr align="center"> 
   				<td colspan="5">
	   				<input type="submit" value="修改"/>
	   				<a href="duty!list.action">记录列表</a>
   				</td>
   			</tr>
   		</table>
   		</form>
  </body>
</html>
