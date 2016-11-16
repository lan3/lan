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
					<a href="#">备用电脑审批</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">

			<div class="tools">

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
							使用时间
						</th>
						<th>
							申请原因
						</th>
						<th>
							下一审批人
						</th>
						<th>
							状态
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${teach}" var="tea">
					<c:if test="${tea.STARTS!='审核成功'}">
						<tr>
							<td>
								${tea.COID }
							</td>
							<td>
								${tea.SIDS }
							</td>
							<td>
								${tea.CLASSID }
							</td>
							<td>
								${tea. TIMES}
							</td>
							<td>
								${tea.LCONTS }
							</td>	
							<td>
								<c:if test="${tea.STARTS=='待审核' }">
									<c:forEach items="${com}" var="com">
										<c:if test="${com.EMPTEACH==tea.EMPTEACH}">${com.EMPTEACHES}</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${tea.STARTS=='审核中' }">
									李芳平
								</c:if>
								<c:if test="${tea.STARTS=='最后审核' }">
									无
								</c:if>
							</td>
							<td>
								${tea.STARTS}
							</td>
							<td>
									
								<c:if test="${tea.STARTS=='待审核' }">
									<c:forEach items="${com}" var="com">
										<c:if test="${tea.CLASSID==com.CLASSNAME}"> 
											<a href="com!cty.action?c.coid=${tea.COID }&sids=${tea.SIDS }&classid=${tea.CLASSID }&times=${tea. TIMES}&lconts=${tea.LCONTS }&empteaches=${com.EMPTEACHES}&starts=${tea.STARTS}" class="tablelink">同意</a>
											<a href="com!teachnoty.action?c.coid=${tea.COID }" class="tablelink">不同意</a>
										</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${tea.STARTS=='审核中'}">
									<c:forEach items="${com}" var="coms">
										<c:if test="${tea.CLASSID==coms.CLASSNAME}"> 
											<a href="com!empcty.action?c.coid=${tea.COID }&sids=${tea.SIDS }&classid=${tea.CLASSID }&times=${tea. TIMES}&lconts=${tea.LCONTS }&empteaches=李芳平&starts=${tea.STARTS}" class="tablelink">同意</a>
											<a href="com!teachesnoty.action?c.coid=${tea.COID }" class="tablelink">不同意</a>
										</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${tea.STARTS=='最后审核'}">
									<c:forEach items="${com}" var="coom">
										<c:if test="${tea.CLASSID==coom.CLASSNAME}"> 
											<a href="com!deptcty.action?c.coid=${tea.COID }&sids=${tea.SIDS }&classid=${tea.CLASSID }&times=${tea. TIMES}&lconts=${tea.LCONTS }&starts=${tea.STARTS}" class="tablelink">同意</a>
											<a href="com!deptsnoty.action?c.coid=${tea.COID }" class="tablelink">不同意</a>
										</c:if>
									</c:forEach>
								</c:if>
							</td>
						</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
			

		<script type="text/javascript">
			$('.tablelist tbody tr:odd').addClass('odd');
			function toadd(){
				location.href="stu!listhourse.action";  //跳转到部门添加页面
			}
	</script>

	</body>

</html>
