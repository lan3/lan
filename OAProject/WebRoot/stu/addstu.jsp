<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'addstu.jsp' starting page</title>
    
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
  <form action="stu!add.action" method="post" enctype="multipart/form-data">
    <table align="center" >
    	<tr bgcolor="white">
    		<td> 
    			学生姓名: 
    		</td>
    		<td>
    			<input type="text" name="s.sname">
    		</td>
    	</tr>
    	<tr bgcolor="white">
    		<td>
    			性别:
    		</td>
    		<td>
    			<input type="radio" name="s.sex" value="男" checked="checked">男
    			<input type="radio" name="s.sex" value="女">女
    		</td>
    	</tr>
    	<tr bgcolor="white">
    		<td> 
    			年龄: 
    		</td>
    		<td>
    			<select name="s.age">
    				<option value="10">10</option>
    				<option value="11">11</option>
    				<option value="12">12</option>
    				<option value="13">13</option>
    				<option value="14">14</option>
    				<option value="15">15</option>
    				<option value="16">16</option>
    				<option value="17">17</option>
    				<option value="18">18</option>
    				<option value="19">19</option>
    				<option value="20">20</option>
    				<option value="21">21</option>
    				<option value="22">22</option>
    				<option value="23">23</option>
    				<option value="24">24</option>
    				<option value="25">25</option>
    			</select>
    		</td>
    	</tr>
    	<tr bgcolor="white">
    		<td>
    			生日:
    		</td>
    		<td>
    			<input type="text" name="s.birthday">
    		</td>
    	</tr>
    	
    	   <tr bgcolor="white">
    		<td>
    			身份ID:
    		</td>
    		<td>
    			<input type="text" name="s.ssname">
    		</td>
    	</tr>
    	<tr bgcolor="white">
    		<td>
    			选择班级:
    		</td>
    		<td>
    			<select name="s.classid">
    				<c:forEach items="${classes}" var="class">
    					<option value="${class.classname  }">${class.classname } </option>
    				</c:forEach>
    			</select>
    			
    		</td>
    	</tr>
    	<tr bgcolor="white">
    		<td>
    			所在宿舍:
    		</td>
    		<td>
    			<select name="s.hourid">
    				<c:forEach items="${hour}" var="hour">
    					<option value="${hour.HOURMARK }">${hour.HOURMARK } </option>
    				</c:forEach>
    			</select>
    		</td>
    	</tr>
    	<tr bgcolor="white">
    		<td>
    			学生头像:
    		</td>
    		<td>
    			<input type="file" name="fil">
    		</td>
    	</tr>


    	<tr bgcolor="white">
    		<td>
    			<input type="submit" value="提交">
    		</td>
    	</tr>
    </table>
    </form>
  </body>
</html>
