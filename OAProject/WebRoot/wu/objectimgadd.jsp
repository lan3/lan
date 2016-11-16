<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>课程表添加</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>
<script type="text/javascript" src="editor/kindeditor.js"></script>

<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
  
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
});
</script>
  </head>
  
  <body>
  <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="default.jsp">首页</a></li>
    <li><a href="#">课程进度修改</a></li>
    </ul>
    </div>
    <div class="formbody">
    <div id="usual1" class="usual"> 
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">课程进度添加</a></li> 
  	</ul>
    </div> 
  	<div id="tab1" class="tabson">
    <form action="objectimgadd" method="post" onsubmit="return y()">
    <ul class="forminfo">
    <li><label> 班级：</label>  
    <div class="vocation">
     <select name="obj.classname" class="select1">
    	<c:forEach items="${l}" var="s">
    		<option value="${s.CLASSNAME }">${s.CLASSNAME }</option>
    	</c:forEach>
    </select>
    </div>
    </li>
    <li><label>课程:</label>
    <div class="vocation">
     <select name="obj.objectname" class="select1"> 
    	<c:forEach items="${lil}" var="s">
    		<option value="${s.onjectname  }">${s.onjectname }</option>
    	</c:forEach>
    </select>
    </div>
    </li>
    <li><label>  总章节:</label>
    <input class="dfinput" id="content" type="number" name="obj.content">
    </li>
    <li><label>&nbsp;</label> <input type="submit" class="btn" value="添加"></li>
    </ul>
     </form>
    </div> 
    <script type="text/javascript">
    	function y(){
    		var content=$("#content").val();
    		if(content==null||content==""){
    			alert("总章节都没填！");
    			return false;
    		}
    	}
    
    </script>
  </body>
</html>
