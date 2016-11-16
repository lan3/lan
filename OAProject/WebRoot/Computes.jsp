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
							是否提交
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${mycom}" var="tea">
						<tr>
							<td>
								<input name="" type="checkbox" value="" />
							</td>
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
								${tea.EMPTEACH}
							</td>
							<td>
								
								<c:if test="${tea.STARTS=='待提交' }">
									<a href="com!clq.action?c.coid=${tea.COID }&c.classid=${tea.CLASSID}" class="tablelink">提交</a>
								</c:if>
								<c:if test="${tea.STARTS=='待审核'}">
									${tea.STARTS }
								</c:if>
								<c:if test="${tea.STARTS=='审核中'}">
									审核中
								</c:if>
								<c:if test="${tea.STARTS=='最后审核'}">
									最后审核
								</c:if>
								<c:if test="${tea.STARTS=='审核成功'}">
									审核成功
								</c:if>
								<c:if test="${tea.STARTS=='审核失败'}">
									审核失败
								</c:if>
							</td>
							<td>
								<c:if test="${tea.STARTS=='待提交'}">
									<a onclick="return confirm('确认要删除吗？')"
										href="com!del.action?c.coid=${tea.COID }&c.classid=${tea.CLASSID}"  class="tablelink">
										删除</a>
								</c:if>
								<c:if test="${tea.STARTS=='待审核'}">
									审核中，请等待
								</c:if>
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
						<a href="stu!stulist.action?currpage=${currpage-1 }"><span
							class="pagepre"></span> </a>
					</li>
					<c:forEach begin="1" end="${totalpage}" var="stu">
						<li class="paginItem">
							<a href="stu!stulist.action?currpage=${stu }">${stu}</a>
						</li>
					</c:forEach>
					<li class="paginItem">
						<a href="stu!stulist.action?currpage=${currpage+1 }"><span
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
				location.href="stu!listhourse.action";  //跳转到部门添加页面
			}
	</script>

	</body>

</html>
