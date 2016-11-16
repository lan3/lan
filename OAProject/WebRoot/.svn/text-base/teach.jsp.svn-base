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
					<a href="leve!teachty.action">请假审批</a>
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


				
			</div>


			<table class="tablelist">
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
							开始时间
						</th>
						<th>
							结束时间
						</th>
						<th>
							请假天数
						</th>
						<th>
						
							请假事由
						</th>
						
						<th>
							下一审批人
						</th>
						<th>
							是否同意
						</th>
						
					</tr>
				<tbody>
					<c:forEach items="${teach}" var="tea">
					<c:if test="${tea.STARTS!='待提交'}">
					<c:if test="${tea.STARTS!='审核成功'}">
						<tr>
							<td>
								${tea.LEVEID }
							</td>
							<td>
								${tea.SID }
							</td>
							<td>
								${tea.CLASSID }
							</td>
							<td>
								${tea.STARTDATE }
							</td>
							
							<td>
								${tea.ENDTIME }
							</td>
							<td>
								${tea.DAY }
							</td>
							<td>
								${tea.LCONT }
							</td>							
							
							<td>
								<c:if test="${tea.STARTS=='待审核' }">
								<c:forEach items="${clas}" var="cla">
									<c:if test="${cla.EMPTEACH==tea.EMPTEACH}">${cla.EMPTEACHES}</c:if>
								</c:forEach>
								</c:if>
								<c:if test="${tea.STARTS=='审核中' }">
									${tea.DAY <= 1? '无':'廖文汉' }
									
								</c:if>
								<c:if test="${tea.STARTS=='最终审核' }">
									无
								</c:if>
							</td>
							<td>
								
								<c:if test="${tea.STARTS=='待审核' }">
								
									<c:forEach items="${clas}" var="claes">
									<c:if test="${tea.CLASSID==claes.CLASSNAME}"> 
									<a href="leve!cty.action?s.leveid=${tea.LEVEID }&s.classid=${tea.CLASSID}&sid=${tea.SID}&classid=${tea.CLASSID }&startdate=${tea.STARTDATE }&endtime=${tea.ENDTIME }&day=	${tea.DAY}&empteach=${claes.EMPTEACHES}&lcont=${tea.LCONT }&starts=${tea.STARTS }" class="tablelink">同意</a>
									<a href="leve!teachnty.action?s.leveid=${tea.LEVEID }" class="tablelink">不同意</a>
									</c:if>
									</c:forEach>
								
								</c:if>
								<c:if test="${tea.STARTS=='审核中'}">
									<c:forEach items="${clas}" var="claes">
									<c:if test="${tea.CLASSID==claes.CLASSNAME}"> 
									  <a href="leve!teachesty.action?s.leveid=${tea.LEVEID }&s.classid=${tea.CLASSID}&sid=${tea.SID}&classid=${tea.CLASSID }&startdate=${tea.STARTDATE }&endtime=${tea.ENDTIME }&day=	${tea.DAY}&empteach=廖文汉&lcont=${tea.LCONT }&starts=${tea.STARTS }" class="tablelink">同意</a>
									  <a href="leve!teachesn.action?s.leveid=${tea.LEVEID }" class="tablelink">不同意</a>
									</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${tea.STARTS=='最终审核'}">
									<c:forEach items="${clas}" var="claes">
										<c:if test="${tea.CLASSID==claes.CLASSNAME}"> 
									  <a href="leve!decty.action?s.leveid=${tea.LEVEID }&s.classid=${tea.CLASSID}&sid=${tea.SID}&classid=${tea.CLASSID }&startdate=${tea.STARTDATE }&endtime=${tea.ENDTIME }&day=	${tea.DAY}&lcont=${tea.LCONT }&starts=${tea.STARTS }" class="tablelink">同意</a>
									   <a href="leve!deptnty.action?s.leveid=${tea.LEVEID }" class="tablelink">不同意</a>
									    </c:if>
									</c:forEach>
								</c:if>
							</td>
						</tr>
						</c:if>
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
