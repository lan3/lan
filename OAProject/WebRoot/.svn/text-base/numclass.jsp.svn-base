<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>无标题文档</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
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
		//加载层
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
					<a href="right.jsp">部门管理</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">

			<div class="tools">

				<ul class="toolbar">
					<li class="click">
						<span><img src="images/t01.png" /> </span>添加
					</li>
					<li class="click">
						<span><img src="images/t02.png" /> </span>修改
					</li>
					<li>
						<span><img src="images/t03.png" /> </span>删除
					</li>
					<li>
						<span><img src="images/t04.png" /> </span>统计
					</li>
				</ul>

				<form action="num!Byclasses.action" method="post">
					<select name="classid">
						<c:forEach items="${listclass}" var="class">
							<option value="${class.classname }">${class.classname }</option>
						</c:forEach>
					</select> 
					<input type="submit" value="查询"/>
				</form>
				

				<ul class="toolbar1">
					<li>
						<span><img src="images/t05.png" /> </span>设置
					</li>
				</ul>

			</div>


			<table class="tablelist">
				<thead>
					<tr>
						<th>
							<input name="" type="checkbox" value="" />
						</th>
						<th>
							编号
						</th>
						<th>
							学生姓名
						</th>
						<th>
							所在班级
						</th>
						<th>
							学生评语
						</th>
					</tr>
				</thead>
				<tbody>
					
					<c:forEach items="${num}" var="num">
						<tr>
							<td>
								<input name="" type="checkbox" value="" />
							</td>
							<td>
								${num.STUNO }
							</td>
							<td>
								${num.SID }
							</td>
							<td>
								${num.CLASSID }
							</td>
							<td>
								${num.SAY}
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="pagin">
				<div class="message">
					共
					<i class="blue">${totalRow }</i>条记录，当前显示第&nbsp;
					<i class="blue">${currpage }&nbsp;/${totalpage }</i>页
				</div>
				<ul class="paginList">
					<li class="paginItem">
						<a href="num!list.action?str=${currpage-1 }"><span
							class="pagepre"></span> </a>
					</li>
					<c:forEach begin="1" end="${totalpage}" var="stu">
						<li class="paginItem">
							<a href="num!list.action?str=${stu }">${stu}</a>
						</li>
					</c:forEach>
					<li class="paginItem">
						<a href="num!list.action?str=${currpage+1 }"><span
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
					<input name="" type="button" onclick="toadd();" class="sure"
						value="确定" />
					&nbsp;
					<input name="" type="button" class="cancel" value="取消" />
				</div>

			</div>
		</div>

		<script type="text/javascript">
			$('.tablelist tbody tr:odd').addClass('odd');
			function toadd(){
				location.href="num!query.action"; 
			}
	</script>

	</body>

</html>
