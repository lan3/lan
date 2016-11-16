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
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">表单</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    
    <form action="job!add.action" method="post">
    <ul class="forminfo">
    <li><label>学生姓名</label>
    	<input name="j.sid" type="text" class="dfinput" /><i></i></li>
    <li><label>所在班级</label><cite>
    	<select name="j.classid">
    		<c:forEach items="${listclass}" var="class">
    			<option value="${class.classname  }">${class.classname } </option>
    		</c:forEach>
    	</select>
	</cite></li>
 	<li><label>现住址</label>
    	<input name="j.city" type="text" class="dfinput" /><i></i></li>
    	
    <li><label>联系方式</label>
    	<input name="j.phone" type="text" class="dfinput" /><i>请输入电话号码</i></li>
    <li><label>公司名称</label>
    	<input name="j.jobname" type="text" class="dfinput" /><i></i></li>	
    <li><label>月薪</label>
    	<input name="j.money" type="text" class="dfinput" /><i></i></li>
    <li><label>福利</label>
    	<input name="j.fuli" type="text" class="dfinput" /><i></i></li>			
    <li><label>备注</label>
    	<textarea name="j.beizhu" cols="" rows="" class="textinput"></textarea></li>
    <li><label>&nbsp;</label>
    	<input  type="submit" class="btn" value="确认保存"/></li>
    </ul> 
    </form>
    </div>


</body>

</html>
