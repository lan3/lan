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
					<a href="web!weblist.action">项目答辩列表</a>
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
				<form action="web!stuweb.action" method="post">
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
							<input name="" type="checkbox" value="" />
						</th>
						<th>
							编号
						</th>
						<th>
							学生姓名
						</th>
						<th>
							功能完善
						</th>
						<th>
							技术难度
						</th>
						<th>
							界面美观
						</th>
						<th>
							演示方法
						</th>
						<th>
							语言表达
						</th>
						<th>
							回答问题
						</th>
						<th>
							总分
						</th>
						<th>
							备注
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${stu}" var="web">
						<tr>
							<td>
								<input name="" type="checkbox" value="" />
							</td>
							<td>
								${web.STUID }
							</td>
							<td>
								${web.SID }
							</td>
							<td>
								${web.WGN }
							</td>
							<td>
								${web.WJS }
							</td>
							<td>
								${web.WMG }
							</td>
							<td>
								${web.WFF }
							</td>
							<td>
								${web.WYUYAN }
							</td>
							<td>
								${web.WHD }
							</td>
								<td>
								${web.SCORE }
							</td>
								<td>
								${web.BEIZHU }
							</td>
						</tr>
					</c:forEach>		
				</tbody>
			</table>
			

			<div class="tip">
				<div class="tiptop">
					<span>提示信息</span><a></a>
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
				location.href="web!stucl.action";  //跳转到部门添加页面
			}
	</script>

	</body>

</html>
