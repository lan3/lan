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
					<a href="#">班级管理</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">

			<div class="tools">

				<ul class="toolbar">
					<li class="click"  onclick="toadd();">
						<span><img src="images/t01.png" /> </span>添加
					</li>
				</ul>
			</div>


			<table class="tablelist">
				<thead>
					<tr>
						<th>
							班级编码
						</th>
						<th>
							班级名称
						</th>
						<th>
							任课老师
						</th>
						<th>
							辅导老师
						</th>
						<th>
							班主任
						</th>
						<th>
							班级地址
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="class">
						<tr>
							<td>
								${class.classid}
							</td>
							<td>
								${class.classname}
							</td>
							<td>
								${class.empteach}
							</td>
							<td>
								${class.eid}
							</td>
							<td>
								${class.empteaches }
							</td>
							<td>
								${class.classaddr }
							</td>

							<td>
								<a href="class!toupd.action?c.classid=${class.classid}" class="tablelink">修改</a>
								<a onclick="return confirm('确认要删除吗？')"
									href="class!del.action?c.classid=${class.classid}"
									class="tablelink"> 删除</a>
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
						<a href="class!list.action?str=${currpage-1 }"><span
							class="pagepre"></span> </a>
					</li>
					<c:forEach begin="1" end="${totalpage}" var="hour">
						<li class="paginItem">
							<a href="class!list.action?str=${hour }">${hour}</a>
						</li>
					</c:forEach>
					<li class="paginItem">
						<a href="class!list.action?str=${currpage+1 }"><span
							class="pagenxt"></span> </a>
					</li>
				</ul>
			</div>


			
		<script type="text/javascript">
			$('.tablelist tbody tr:odd').addClass('odd');
			function toadd(){
				location.href="class!emp.action";  //跳转到部门添加页面
			}
	</script>

	</body>

</html>
