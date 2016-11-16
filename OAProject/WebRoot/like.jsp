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
				</ul>
		<ul class="seachform">
				<form action="job!classtu.action" method="post">
					<li style="margin-left: 250px;">
						<div class="vocation">
							<input type="text" name="uname"  onchange="tosel2();"class="scinput"  style="width: 200px;"/>							
						</div>
					</li>
					<li>
		
						<input type="submit" class="btn" value="查询"  />
					</li>
				</form>
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
							班级
						</th>
						<th>
							学生姓名
						</th>
						<th>
							现住址
						</th>
						<th>
							联系电话
						</th>
						<th>
							月薪
						</th>
						<th>
							福利
						</th>
						<th>
							备注
						</th>
						<th>
							公司名称
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="job">
						<tr>
							<td>
								<input name="" type="checkbox" value="" />
							</td>
							<td>
								${job.JOBID }
							</td>
							<td>
								${job.CLASSID }
							</td>
							<td>
								${job.SID }
							</td>
							<td>
								${job.CITY }
							</td>
							<td>
								${job.PHONE }
							</td>
							
							<td>
								${job.MONEY }
							</td>
							<td>
								${job.FULI }
							</td>
							<td>
								${job.BEIZHU }
							</td>
							<td>
								${job.JOBNAME }
							</td>
						</tr>
					</c:forEach>		
				</tbody>
			</table>
		</div>

		<script type="text/javascript">
			$('.tablelist tbody tr:odd').addClass('odd');
			function toadd(){
				location.href="job!liststu.action";  //跳转到部门添加页面
			}
	</script>

	</body>

</html>
