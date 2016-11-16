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
		<base href="<%=basePath%>">

		<title>My JSP 'leave.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
		<link rel="stylesheet" type="text/css" href="styles.css">
		-->
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript">
			function gettime(){
				var t1=document.getElementById("d11").value;
				var t2=document.getElementById("d12").value;
				document.getElementById("ltime").value=DateDiff(t2,t1);
			}
			function DateDiff(sDate1, sDate2){ //sDate1和sDate2是2006-12-18格式 
				var aDate, oDate1, oDate2, iDays;
				aDate = sDate1.split("-");
				oDate1 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0]); //转换为12-18-2006格式 
				aDate = sDate2.split("-");
				oDate2 = new Date(aDate[1] + '-' + aDate[2] + '-' + aDate[0]); 
				iDays = parseInt(Math.abs(oDate1 - oDate2) / 1000 / 60 / 60 /24); //把相差的毫秒数转换为天数 
				return iDays;
			 }
		</script>
	</head>

	<body>
		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="#">首页</a>
					<a href="view!cont.action">反馈列表</a>
				</li>
			</ul>
		</div>

		<div class="formtitle">
			<span>学生反馈信息</span>
		</div>
		<form action="view!addview.action" method="post">
			<ul class="forminfo">
				<li>
					<label>
						所在班级
					</label>
					<select name="v.classid">
						<c:forEach items="${listclass}" var="class">
							<option value="${class.classname }">
								${class.classname }
							</option>
						</c:forEach>
					</select>
					<i></i>
				</li>
				<li>
					<label>
						反馈标题
					</label>
					<input name="v.vcontent" type="text" class="dfinput" />
					<i></i>
				</li>
				<li>
					<label>
						反馈时间
					</label>
					<cite> <input type="text" name="v.endtime"
							readonly="readonly" class="dfinput" class="Wdate"
							onclick="WdatePicker()" name="s.startdate" /> </cite>
				</li>
				<li>
					<label>
						反馈内容
					</label>
					<textarea class="textinput" rows="8" cols="10" name="v.views"></textarea>
				</li>
				<li>
					<label>
						&nbsp;
					</label>
					<input type="submit" class="btn" value="提交" />
				</li>
			</ul>
		</form>
	</body>

</html>
