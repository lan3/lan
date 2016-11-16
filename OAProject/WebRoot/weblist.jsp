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
					<a href="#">项目答辩管理</a>
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
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${web}" var="web">
						<tr>
							<td>
								${web.stuid }
							</td>
							<td>
								${web.sid }
							</td>
							<td>
								${web.wgn }
							</td>
							<td>
								${web.wjs }
							</td>
							<td>
								${web.wmg }
							</td>
							<td>
								${web.wff }
							</td>
							<td>
								${web.wyuyan }
							</td>
							<td>
								${web.whd }
							</td>
								<td>
								${web.score }
							</td>
								<td>
								${web.beizhu }
							</td>
							<td>
								<a href="stu!toupd.action?s.sid=${stu.sid }" class="tablelink">修改</a>
								<a onclick="return confirm('确认要删除吗？')"
									href="web!del.action?s.stuid=${web.stuid }"  class="tablelink">
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
						<a href="web!weblist.action?str=${currpage-1 }"><span
							class="pagepre"></span> </a>
					</li>
					<c:forEach begin="1" end="${totalpage}" var="stu">
						<li class="paginItem">
							<a href="web!weblist.action?str=${stu }">${stu}</a>
						</li>
					</c:forEach>
					<li class="paginItem">
						<a href="web!weblist.action?str=${currpage+1 }"><span
							class="pagenxt"></span> </a>
					</li>
				</ul>
			</div>



		<script type="text/javascript">
			$('.tablelist tbody tr:odd').addClass('odd');
			function toadd(){
				location.href="web!stucl.action";  //跳转到部门添加页面
			}
	</script>

	</body>

</html>
