<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script type="text/javascript" src="js/jquery.js"></script>
<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
</head>


<body>
	<script>
		function loc(){
			location.href="objectimgtoadd";
		}
	</script>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="default.jsp">首页</a></li>
    <li><a href="#">课程进度管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click" onclick="loc()"><span><img src="images/t01.png" /></span>添加</li>
        </ul>
        
    </div>
    <div>
    <ul class="classlist">
    <c:forEach items="${list}" var="s">
    	 <li>
	    <div class="lright">
	    <h2>${s.objectname }</h2>
	    <p>
	    	班级:${s.classname }<br/>
	    	任课老师:${s.kename }<br/>
	    	课程数：共${s.content }章<br/>
	    	已完成：${s.tocontent==null? '0':s.tocontent }章<br/>
	    	</p>
	    <a class="enter" href="objectimgtoupdate?obj.kid=${s.kid }">修改</a>
	    <a class="enter" href="objectimgdelete?obj.kid=${s.kid }">删除</a>
	    </div>
	    </li>
    
    </c:forEach>
   
    </ul>
    </div>
     <div class="clear"></div>
    <div class="pagin">
     <div class="message">共<i class="blue">${totalpage }</i>条记录，当前显示第&nbsp;<i class="blue">${currpage }&nbsp;</i>页</div>
    <div class="pagin">
    	<ul class="paginList">
        <li class="paginItem"><a href="objectimglist?currpage=${currpage-1 }"><span class="pagepre"></span></a></li>
		<c:forEach begin="1" end="${totalrow}" var="s">
			<li ${s==currpage ? 'class="paginItem current"':'class="paginItem"' }><a href="objectimglist?currpage=${s }">${s}</a></li>
		</c:forEach>
        
        <li class="paginItem"><a href="objectimglist?currpage=${currpage+1 }"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
    </div>
</body>

</html>
