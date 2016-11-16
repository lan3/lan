
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
    
    <form action="hour!update.action" method="post">
    <ul class="forminfo">
      <input type="hidden" name="h.hourid" value="${hi.hourid}"/>
    <li><label>宿舍房号：</label>
    	
    	<input type="text" name="h.hourmark" value="${hi.hourmark }" class="dfinput" /><i></i></li>
    <li><label>宿舍位置： </label>
    	<input type="text" name="h.hourseat" value="${hi.hourseat }" class="dfinput" /><i></i></li>
    <li><label>宿舍长</label>
    	<input type="text" name="h.houruname" value="${hi.houruname }" class="dfinput" /><i></i></li>
    <li><label>&nbsp;</label>
    	<input  type="submit" class="btn" value="确认修改"/>
    	
    	<input  type="button" class="btn" value="取消" onclick="check();"/>
    	</li>
    </ul> 
    </form>
    </div>
    
    <script>
    	function check(){
    		location.href="class!list.action";
    	}
    </script>
</body>

</html>

