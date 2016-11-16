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
					<a href="job!list.action">就业管理</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">

			<div class="tools">

				<ul class="toolbar">
					<li class="click" onclick="toadd();">
						<span><img src="images/t01.png" /> </span>添加
					</li>
					
				</ul>
				<ul class="seachform">
				<form action="job!classtu.action" method="post">
					<li style="margin-left: 250px;">
						<div class="vocation">
							<input type="text" name="uname"  onchange="tosel2();"class="scinput" style="width: 200px;"/>							
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
							编号
						</th>
						<th>
							学生姓名
						</th>
						<th>
							班级
						</th>
						<th>
							现住址
						</th>
						<th>
							联系电话
						</th>
						<th>
							公司名称
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
							操作
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="job">
						<tr>
							<td>
								${job.jobid }
							</td>
							<td>
								${job.sid }
							</td>
							<td>
								${job.classid }
							</td>
							<td>
								${job.city }
							</td>
							<td>
								${job.phone }
							</td>
							<td>
								${job.jobname }
							</td>
							<td>
								${job.money }
							</td>
							<td>
								${job.fuli }
							</td>
							<td>
								${job.beizhu }
							</td>
							<td>
								<a onclick="return confirm('确认要删除吗？')"
									href="job!del.action?j.jobid=${job.jobid }"  class="tablelink">
									删除</a>
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
						<a href="hour!list.action?str=${currpage-1 }"><span class="pagepre"></span> </a>
					</li>
					<c:forEach begin="1" end="${totalpage}" var="hour">
						<li class="paginItem">
							<a href="hour!list.action?str=${hour }">${hour}</a>
						</li>
					</c:forEach>
					<li class="paginItem">
						<a href="hour!list.action?str=${currpage+1 }"><span class="pagenxt"></span> </a>
					</li>
				</ul>
			</div>


		<script type="text/javascript">
			$('.tablelist tbody tr:odd').addClass('odd');
			function toadd(){
				location.href="job!liststu.action";  //跳转到部门添加页面
			}
	</script>

	</body>

</html>
