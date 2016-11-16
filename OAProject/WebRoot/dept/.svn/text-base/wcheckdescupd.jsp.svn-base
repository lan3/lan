<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

		<title>My JSP 'wcheck.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
table.zyhovertable {
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}

table.zyhovertable th {
	background-color: #C3DDE0;
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}

table.zyhovertable tr {
	background-color: #DCDCDC;
}

table.zyhovertable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}
</style>
	
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<body>
		<form action="wcheckdesc!upd.action" method="post">
		<table class="zyhovertable" align="center">
			<tr>
				<th>
					员工ID
					<input type="hidden" value="${wdesc.deid}" name="wdesc.deid">
					<input type="hidden" value="${wdesc.num}" name="wdesc.num">
				</th>
				<th>
					时间
				</th>
				<th>
					原因
				</th>
				<th>
					直属领导
				</th>
				<th>
					操作
				</th>
			</tr>
			<tr>
				<td><input type="text" value="${wdesc.eid}" name="wdesc.eid"></td>
				<td><input type="text" value="${wdesc.edate }" name="wdesc.edate"></td>
				<td><input type="text" value="${wdesc.dreason }" name="wdesc.dreason"></td>
				<td><input type="text" value="${wdesc.dup }" name="wdesc.dup"></td>
				<td><input type="submit" value="修改"></td>
			</tr>
		</table>
	</form>
	</body>
</html>
