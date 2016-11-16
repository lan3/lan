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

  </head>
  
  <body>
  <form action="dept!upd.action" method="post">
    <table align="center" width="60%" cellspacing="1" bgcolor="black">
	    <tr bgcolor="white">
	    	<td>
	    		部门名称
	    	</td>
	    	<td>
	    		<input  type="hidden" name="dept.did" value="${dept.did }"/>
	    		<input  type="text" name="dept.dname" value="${dept.dname }"/>
	    	</td>
	    </tr>
	    <tr bgcolor="white">
	    	<td>
	    		部门负责人
	    	</td>
	    	<td>
	    		<select name="dept.eid">
	    			<c:forEach items="${emplist}" var="emp">
	    			<option value="${emp.EID }" ${emp.EID==dept.eid?'selected':'' }>${emp.ENAME }</option>
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
	    			<option value="0" ${dept.status=='0'?'selected':'' }>0</option>
	    			<option value="1" ${dept.status=='1'?'selected':'' }>1</option>
	    		</select>
	    	</td>
	    </tr>
	    <tr bgcolor="white">
	    	<td>
	    		创建时间
	    	</td>
	    	<td>
	    		<input  type="text" name="dept.createtime" value="${dept.createtime}"/>
	    	</td>
	    </tr>
	    <tr bgcolor="white">
	    	<td>
	    		校主管
	    	</td>
	    	<td>
	    	<select name="dept.xid">
    			<c:forEach items="${emplist}" var="emp">
    				<option value="${emp.EID }" ${emp.EID==dept.xid?'selected':'' }>${emp.ENAME }</option>
    			</c:forEach>
	    		</select>
	    	</td>
	    </tr>
	    <tr bgcolor="white" align="center">
	    <td colspan="2">
	    	<input type="submit" value="修改" />
	   		<input type="reset" value="重置" />
	    </td>
	    </tr>
    </table>
   </form>
  </body>
</html>
