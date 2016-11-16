<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="default.jsp">首页</a></li>
     <li><a href="com!mycomputes.action">电脑申请领用表</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    
    <form action="com!add.action"  method="post" >
    <ul class="forminfo">
    <li><label>所在班级</label>
		<select name="c.classid">
			<c:forEach items="${listclass}" var="class">
				<option value="${class.classname }">${class.classname }</option>
			</c:forEach>
		</select> 
	</li>
	<li><label>下一审核人</label>
		<select name="c.empteach">
			<c:forEach items="${listclass}" var="class">
				<option value="${class.empteach }">${class.empteach }</option>
			</c:forEach>
		</select> 
	</li>  
   <li><label>估计使用时间</label>
    	<input name="c.times" type="text"  class="dfinput"/></li>
   <li><label>申请原因</label>
    	<textarea name="c.lconts"  cols="" rows="" class="textinput"></textarea></li>
    <li><label>&nbsp;</label>
    	<input  type="submit" class="btn"  value="保存"/></li>
    </ul> 
    </form>
    </div>
		
</body>

</html>
