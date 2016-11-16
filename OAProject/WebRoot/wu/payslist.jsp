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
<title>工资管理</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<style type="text/css">
table.zyhovertable {
    font-family: 
    verdana,arial,sans-serif;
    font-size:11px;
    color:#333333;
    border-width: 1px;
    border-collapse: 
    collapse;
	 border-color: #999999;
	 width:100%;
}

table.zyhovertable th {
    background-color:#C3DDE0;
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #999999;
}
table.zyhovertable td {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
	 border-color: #999999;
}
</style>
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
<script>
	function add(){
		location.href="monpaystoadd";
		}
	function fafang(){
		location.href="mongetpays";
	}
</script>
</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="default.jsp">首页</a></li>
    <li><a href="#">工资管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click" onclick="add()"><span><img src="images/t01.png" /></span>添加</li>
        <li onclick="fafang()"><span><img src="images/t01.png" /></span>发放工资</li>
        </ul>
      
    </div>
<table class="zyhovertable">
<tr> 
<th rowspan="2">职务</th>
<th rowspan="2">员工姓名</th>
<th rowspan="2">薪资标准</th>
<th rowspan="2">考核天数</th>
<th rowspan="2">其他工资</th>
<th rowspan="2">应税工资</th>
<th colspan="3">代缴费用</th>
<th rowspan="2">操作</th>
</tr>

<tr>
<th>社保 </th><th>住房公积金 </th><th>个税</th>
</tr>
<c:forEach items="${list}" var="pay">
<tr>
	<td>${pay.ejob }</td>
	<td>${pay.payname }</td>
	<td>${pay.paynorm }</td>
	<td>${pay.checkdata }</td>
	<td>${pay.othermon }</td>
	<td>${pay.echotaxmon }</td>
	<td>${pay.socialmon }</td>
	<td>${pay.noasingfaud }</td>
	<td>${pay.incometax }</td>
	<td>
	<a href="monpaystoupd?ps.paysid=${pay.paysid }" class="tablelink">修改</a>
	<a href="monpaysdele?ps.paysid=${pay.paysid }" class="tablelink">删除</a>
	</td>
</tr>
</c:forEach>
</table>

 </body>
</html>
