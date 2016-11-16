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
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<link href="css/select.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
		<script type="text/javascript" src="js/select-ui.min.js"></script>
		<script type="text/javascript" src="editor/kindeditor.js"></script>
		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>


<script type="text/javascript">
  	  	KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
</script>

<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>
</head>


<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="default.jsp">首页</a></li>
    <li><a href="#">研讨会-查看</a></li>
    </ul>
    </div>
      
    <table class="imgtable">
    <thead>
    <tr>
	    <th>主持人</th>
	    <th>时间</th>
	    <th>地点</th>
	    <th>记录人</th>
	    <th>内容主题</th>
	    <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="tra">
	    <tr>
		    <td>${tra.tname }</td>
		    <td>${tra.tdata }</td>
		    <td>${tra.tloc }</td>
		    <td>${tra.tnoter}</td>
		    <td>${tra.theam }</td>
		    <td><a href="tratradetails?tra.tid=${tra.tid }" class="tablelink">查看详情</a>
		    	 <a href="tratradele?tra.tid=${tra.tid }" class="tablelink">删除</a> 
		    </td>
	    </tr>
    </c:forEach>
    </tbody>
    </table>
 
   <div class="message">共<i class="blue">${totalpage }</i>条记录，当前显示第&nbsp;<i class="blue">${currpage }&nbsp;</i>页</div>
    <div class="pagin">
    	<ul class="paginList">
        <li class="paginItem"><a href="tratralist?currpage=${currpage-1 }"><span class="pagepre"></span></a></li>
		<c:forEach begin="1" end="${totalrow}" var="s">
			<li ${s==currpage ? 'class="paginItem current"':'class="paginItem"' }><a href="tratralist?currpage=${s }">${s}</a></li>
		</c:forEach>
        
        <li class="paginItem"><a href="tratralist?currpage=${currpage+1 }"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
   </body>
</html>
