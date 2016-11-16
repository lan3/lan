<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'limitlist.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	--><link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>

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
				<li>
					<a href="default.jsp">首页</a>
				</li>
				<li>
					<a href="limit!list.action">修改权限</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">
			<table class="tablelist" id="tabProduct">
				<tr>
				<td>
					编号
				</td>
				<td>
					姓名
				</td>
				<td>
					性别
				</td>
				<td>
					所属部门
				</td>
				<td>
					权限管理
				</td>
			</tr>

				<c:forEach items="${list}" var="emp">
				<tr>
					<td>
						${emp.EID }
					</td>
					<td>
						${emp.ENAME }
					</td>
					<td>
						${emp.SEX }
					</td>
					<td>
						${emp.DEPTID }
					</td>
					<td>
						<a class="tablelink" href="limit!upd.action?limit.eid=${emp.EID }">修改权限</a>
					</td>
				</tr>
			</c:forEach>
			</table>
			
			<div class="pagin">
				<div class="message">
					共
					<i class="blue">${totalrow }</i>条记录，当前显示第&nbsp;
					<i class="blue">${currpage }&nbsp;</i>页/${totalpage }页
				</div>
				<ul class="paginList">
					<li class="paginItem">
						<a href="limit!list.action?page=${currpage-1 }"><span
							class="pagepre"></span> </a>
					</li>
					<c:forEach begin="1" end="${totalpage}" var="i">
						<li class="paginItem">
							<a href="limit!list.action?page=${i }">${i }</a>
						</li>
					</c:forEach>
					<li class="paginItem">
						<a href="limit!list.action?page=${currpage+1 }"><span
							class="pagenxt"></span> </a>
					</li>
				</ul>
			</div>
				<div class="tip">
					<div class="tiptop">
						<span>提示信息</span><a></a>
					</div>

					<div class="tipinfo">
						<span><img src="images/ticon.png" /> </span>
						<div class="tipright">
							<p>
								是否确认对信息的修改 ？
							</p>
							<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
						</div>
					</div>

					<div class="tipbtn">
						<input name="" type="button" onclick="topage();"
							class="sure" value="确定" />
						&nbsp;
						<input name="" type="button" class="cancel" value="取消" />
					</div>
				</div>
			
			<script type="text/javascript">
						$('.tablelist tbody tr:odd').addClass('odd');
						function topage(){
							location.href="overtime!seldata.action";
						}
			</script>
	</body>
</html>
