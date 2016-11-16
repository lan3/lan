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
  	  	KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
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

<script>
	function add(){
		location.href="montoadd";
		}
	function tosel1(){
	var  xueqi=document.getElementById("xueqi").value;
	var  stuname=document.getElementById("stuname").value;
	var  classname=document.getElementById("classname").value;
		location.href="monlist?xueqi="+xueqi+"&stuname="+stuname+"&classname="+classname;
	}
</script>

</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="default.jsp">首页</a></li>
    <li><a href="#">学生收费管理</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click" onclick="add()"><span><img src="images/t01.png" /></span>添加</li>
        </ul>
        
        	<ul class="seachform">
					<li>
						<label>
							学期:
						</label>
						<div class="vocation">
						<select id="xueqi"  class="select3" >
						<option></option>
								<option value="1">第一学期</option>
								<option value="2">第二学期</option>
								<option value="3">第三学期</option>
								<option value="4">第四学期</option>
						</select>
						</div>
					</li>
					<li>
						<label>
							学生名字:
						</label>
						<div class="vocation">
						<select  id="stuname"  class="select3" >
						<option></option>
							<c:forEach items="${l}" var ="s">
								<option value="${s.SNAME }">${s.SNAME }</option>
							</c:forEach>
						</select>
						</div>
					</li>	
					<li>
						<label>
							班级名字:
						</label>
						<div class="vocation">
						<select id="classname"  class="select3" >
						<option></option>
							<c:forEach items="${lil}" var ="s">
								<option value="${s.CLASSNAME }">${s.CLASSNAME }</option>
							</c:forEach>
						</select>
						</div>
					</li>
					<li>
						<label>
							&nbsp;
						</label>
						<input type="button"  onclick="tosel1();" class="btn" value="查询"  />
					</li>
				</ul>
        
    </div>
    
    <table class="imgtable">
    
    <thead>
    <tr>
    <th width="100px;">学生姓名</th>
    <th>学期</th>
    <th>班级</th>
    <th>经手人</th>
    <th>实际缴费</th>
    <th>缴费形式</th>
    <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="s">
	    <tr>
		    <td>${s.SNAME }</td>
		    <td>
		    	<c:if test="${s.TERM==1 }">第一学期</c:if>
		    	<c:if test="${s.TERM==2 }">第二学期</c:if>
		    	<c:if test="${s.TERM==3 }">第三学期</c:if>
		    	<c:if test="${s.TERM==4 }">第四学期</c:if>
		    </td>
		     <td>${s.CLASSNAME }</td>
		    <td>${s.ENAME }</td>
		    <td>${s.AVAMON }</td>
		    <td>
		    	<c:if test="${s.AVAFROM==0 }">现金</c:if>
		    	<c:if test="${s.AVAFROM==1 }">银行转账</c:if>
		    	<c:if test="${s.AVAFROM==2 }">支付宝转账</c:if>
		    	<c:if test="${s.AVAFROM==3 }">支票</c:if>
		    </td>
		    <td><a href="mondelete?ava.aid=${s.AID }" class="tablelink">删除</a></td>
	    </tr>
    </c:forEach>
    </tbody>
    </table>
  <div class="message">共<i class="blue">${totalpage }</i>条记录，当前显示第&nbsp;<i class="blue">${currpage }&nbsp;</i>页</div>
    <div class="pagin">
    	<ul class="paginList">
        <li class="paginItem"><a href="monlist?currpage=${currpage-1 }&xueqi=${xueqi }&stuname=${stuname }&classname=${classname }"><span class="pagepre"></span></a></li>
		<c:forEach begin="1" end="${totalrow}" var="s">
			<li ${s==currpage ? 'class="paginItem current"':'class="paginItem"' }><a href="monlist?currpage=${s }&xueqi=${xueqi }&stuname=${stuname }&classname=${classname }">${s}</a></li>
		</c:forEach>
        
        <li class="paginItem"><a href="monlist?currpage=${currpage+1 }&xueqi=${xueqi }&stuname=${stuname }&classname=${classname }"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
</body>

</html>
