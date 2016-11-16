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
		<link href="${pageContext.request.contextPath}/css/style.css"  rel="stylesheet"  type="text/css" />
		<script type="${pageContext.request.contextPath}/text/javascript"  src="js/jquery.js"></script>
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
					<a href="#">意向学生登记</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">
			<div class="tools">
				<ul class="toolbar">
					<li class="click"  onclick="toadd();"> 
						<span><img src="${pageContext.request.contextPath}/images/t01.png" /> </span><a  href="inten!enamelist.action"  >添加</a>
					</li>
					
				</ul>
			

			</div>


			<table class="tablelist">
				<thead>
					<tr  style="align:center" >
						<th>编号</th>
						<th>姓名</th>
		  				<th>性别</th>
		  				<th>年龄</th>
		  				<th>出生日期</th>
		  				<th>就读高中</th>
		  				<th>联系QQ</th>
		  				<th>联系电话</th>
		  				<th>家庭住址</th>
		  				<th>推荐老师</th>
		  				<th>登记时间</th>
		  				<th>操作</th>
					</tr>
				</thead>
				<tbody>
				<tr>
  		
		
		<c:forEach items="${list}"  var="inte" >
		<tr bgcolor="white"  style="align:center" >
				
						  	<td>
									${inte.INTENDID }
								</td>
								<td>
									${inte.INTENNAME }
								</td>
								<td>
									${inte.INTENSEX }
								</td>
								<td>
									${inte.INTENAGE }
								</td>
								<td>
									${inte.INTENBIR }
								</td>
								<td>
									${inte.INTENSCH }
								</td>
								<td>
									${inte.INTENQQ }
								</td>
								<td>
									${inte.INTENTEL }
								</td>
								<td>
									${inte.INTENADDR}
								</td>
								<td>
									${inte.ENAMES}
								</td>
								<td>
									${inte.INTENDATE }
								</td>

						
						<td>
								<a href="inten!toupd.action?inte.intendid=${inte.INTENDID }" class="tablelink">修改</a>
								<a onclick="return confirm('确认要删除吗？')"
									href="inten!del.action?inte.intendid=${inte.INTENDID }"
									class="tablelink"> 删除</a>
							</td>
							</tr>
					</c:forEach>
					</tr>
				</tbody>
			</table>
			<div class="pagin">
				<div class="message">
					共
					<i class="blue">${totalrow}</i>条记录，当前显示第&nbsp;
					<i class="blue">${currpage }&nbsp;</i>页/${totalpage }页
				</div>
				<ul class="paginList">
					<li class="paginItem">
						<a href="inten!intelist.action?page=${currpage-1 }"><span
							class="pagepre"></span> </a>
					</li>
					<c:forEach begin="1" end="${totalpage}" var="i">
						<li class="paginItem">
							<a href="inten!intelist.action?page=${i }">${i }</a>
						</li>
					</c:forEach>
					<li class="paginItem">
						<a href="inten!intelist.action?page=${currpage+1 }"><span
							class="pagenxt"></span> </a>
					</li>
				</ul>
			</div>
			
		</div>
	</body>
</html>
