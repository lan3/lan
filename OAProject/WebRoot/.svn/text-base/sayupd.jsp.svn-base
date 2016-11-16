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
    
    <form action="say!update.action" method="post">
     <input type="hidden" name="s.sayid" value="${s.sayid }"/>
    <ul class="forminfo">
    <li><label>谈心问题</label>
    	<input name="s.sayspro"  value="${s.sayspro }" type="text" class="dfinput" /><i>标题不能超过30个字符</i></li>
    <li><label>谈心对象</label>
    	<input name="s.sid"  value="${s.sid }" type="text" class="dfinput" /><i></i></li>
    <li><label>策划人</label><cite>
    	<select name="s.classid">
    		<c:forEach items="${listsc}" var="class">
    			<option  ${s.classid==class.empteaches? 'selected':''}>${class.empteaches } </option>
    		</c:forEach>
    	</select>
	</cite></li>
    <li><label>学生反馈</label>
    	<input name="s.saysback" value="${s.saysback }" type="text" class="dfinput"/></li>
    <li><label>谈心内容</label>
    	<textarea name="s.sayscon"  cols="" rows="" class="textinput">${s.sayscon }</textarea></li>
    <li><label>&nbsp;</label>
    	<input  type="submit" class="btn" value="确认保存"/></li>
    </ul> 
    </form>
    </div>


</body>

</html>
