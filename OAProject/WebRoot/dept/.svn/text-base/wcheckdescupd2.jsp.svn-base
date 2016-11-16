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
	</head>

	<body>
		<div class="formtitle">
			<span>加班信息</span>
		</div>
		<form action="wcheckdesc!upd.action" method="post">
			<ul class="forminfo">
				<li>
					<label>
						姓名
					</label>
					<input type="hidden" name="wdesc.deid" value="${wdesc.deid }"/>
					<input name="ename" value="${ename }" readonly="readonly" type="text" class="dfinput" />
				</li>
				<li>
					<label>
						日期
					</label>
					<cite> <input type="text" id="d11" readonly="readonly"
					class="dfinput"	class="Wdate" onclick="WdatePicker()" value="${wdesc.edate }" name="wdesc.edate" />
					</cite>
				</li>
				<li>
					<label>
						第几次未打卡
					</label>
					<select name="wdesc.num" class="dfinput">
						<option value="第一次打卡" ${wdesc.num=='第一次打卡'?'selected':'' }>第一次打卡</option>
						<option value="第二次打卡" ${wdesc.num=='第二次打卡'?'selected':'' }>第二次打卡</option>
						<option value="第三次打卡" ${wdesc.num=='第三次打卡'?'selected':'' }>第三次打卡</option>
						<option value="第四次打卡" ${wdesc.num=='第四次打卡'?'selected':'' }>第四次打卡</option>
					</select>
				</li>
				<li>
					<label>
						未打卡原因
					</label>
					<textarea class="textinput" rows="8" cols="10" name="wdesc.dreason">${wdesc.dreason }</textarea>
				</li>
				<li>
					<label>
						审批人
					</label>
					<select class="dfinput" name="wdesc.dup" >
						<c:forEach items="${emplist}" var="emp">
							<option value="${emp.EID }" ${emp.EID==wdesc.dup?'selected':'' }>${emp.ENAME }</option>
						</c:forEach>
					</select>
				</li>
				<li>
					<label>
						&nbsp;
					</label>
					<input type="submit" class="btn" value="确认保存" />
				</li>
			</ul>
		</form>
	</body>

</html>
