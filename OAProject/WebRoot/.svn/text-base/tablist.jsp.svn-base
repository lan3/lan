<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>无标题文档</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<link href="css/select.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
		<script type="text/javascript" src="js/select-ui.min.js"></script>
		<script type="text/javascript" src="editor/kindeditor.js"></script>

		<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>

		<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
});
</script>
	</head>

	<body>
		<form id="reg-form" action="msglist.action" method="post">
		
		<div class="place">
				<span>位置：</span>
				<ul class="placeul">
					<li>
						<a href="default.jsp">首页</a>
					</li>
					<li>
						<a href="#">已发布通知</a>
					</li>
				</ul>
			</div>
		
			<div class="tabson">

				<table class="tablelist">
					<thead>
						<tr>
							
							<th>
								编号
							</th>
							<th>
								标题
							</th>
							
							<th>
								面向对象
							</th>
							<th>
								内容
							</th>
							<th>
								附件
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
						<c:forEach items="${list}" var="msg">
							<tr>
								
								<td>
									
									${msg.MSGID}
								</td>
								<td>
									${msg.MSGTITLE}
								</td>
								
								<td>
								<c:if test="${msg.MSGFACE==0}">
									学生
								</c:if>
								<c:if test="${msg.MSGFACE==1}">
									老师
								</c:if>
									
								</td>
								<td>
									${msg.MSGCON}
								</td>
								<td>
									${msg.MSGACCESSORY}
								</td>
								<td>
								<c:if test="${msg.MSGSTATUS==0}">
									<font color="#0df235">发布</font>
								</c:if>
								<c:if test="${msg.MSGSTATUS==1}">
									<font color="red">未发布</font>
								</c:if>
								</td>
								<td>
								<a  href="msgsel.action?msg.msgid=${msg.MSGID}"  class="tablelink">查看</a>
								
								</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>

			</div>


		</form>


		<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 	
    </script>

		<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>


	
	
	
	</body>
</html>
