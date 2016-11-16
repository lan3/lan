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
    
    <title>My JSP 'deptadd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
  </head>
  
  <body>
  <form action="dept!add.action" method="post">
    <table align="center" width="60%" cellspacing="1" bgcolor="black">
	    <tr bgcolor="white">
	    	<td>
	    		部门名称
	    	</td>
	    	<td>
	    		<input  type="text" name="dept.dname"/>
	    	</td>
	    </tr>
	    <tr bgcolor="white">
	    	<td>
	    		部门负责人
	    	</td>
	    	<td>
	    		<select name="dept.eid">
	    			<c:forEach items="${emplist}" var="emp">
	    				<option value="${emp.EID }" >${emp.ENAME }</option>
	    			</c:forEach>
	    		</select>
	    	</td>
	    </tr>
	    <tr bgcolor="white">
	    	<td>
	    		状态
	    	</td>
	    	<td>
	    		<select name="dept.status">
	    			<option value="0">0</option>
	    			<option value="1">1</option>
	    		</select>
	    	</td>
	    </tr>
	    <tr bgcolor="white">
	    	<td>
	    		创建时间
	    	</td>
	    	<td>
	    		<input type="text" id="d11" readonly="readonly" class="Wdate"
							onclick="WdatePicker()" name="dept.createtime" />
	    	</td>
	    </tr>
	    <tr bgcolor="white">
	    	<td>
	    		校主管
	    	</td>
	    	<td>
	    		<select name="dept.xid">
	    			<c:forEach items="${emplist}" var="emp">
	    				<option value="${emp.EID }" >${emp.ENAME }</option>
	    			</c:forEach>
	    		</select>
	    	</td>
	    </tr>
	    <tr bgcolor="white" align="center">
	    <td colspan="2">
	    	<input type="submit" value="添加" />
	   		<input type="reset" value="重置" />
	    </td>
	    </tr>
    </table>
   </form>
  </body>
</html>
