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

		<title>My JSP 'leave.jsp' starting page</title>

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

		<form action="leave!upd.action" method="post">
			<table align="center" width="60%" class="zyhovertable">
				<tr>
					<th>
						姓名
					</th>
					<th>
						请假原因
					</th>
					<th>
						开始时间
					</th>
					<th>
						结束时间
					</th>
					<th>
						天数
					</th>
					<th>
						说明
					</th>
					<th>
						主管领导
					</th>
					<th>
						状态
					</th>
					<th>
						操作
					</th>
				</tr>
				<tr>
					<td>
						<input type="hidden" name="leave.lid" value="${leave.lid }" />
						<input type="text" value="${leave.eid }" readonly="readonly" name="leave.eid" />
					</td>
					<td>
						<select name="leave.ltypename">
							<option value="休假" ${leave.ltypename=='休假'?'selected':'' } >
								休假
							</option>
							<option value="病假" ${leave.ltypename=='病假'?'selected':'' }>
								病假
							</option>
							<option value="事假" ${leave.ltypename=='事假'?'selected':'' }>
								事假
							</option>
							<option value="婚假" ${leave.ltypename=='婚假'?'selected':'' }>
								婚假
							</option>
							<option value="丧假" ${leave.ltypename=='丧假'?'selected':'' }>
								丧假
							</option>
							<option value="产假" ${leave.ltypename=='产假'?'selected':'' }>
								产假
							</option>
							<option value="陪产假" ${leave.ltypename=='陪产假'?'selected':'' }>
								陪产假
							</option>
							<option value="其他" ${leave.ltypename=='其他'?'selected':'' }>
								其他
							</option>
						</select>
					</td>
					<td>
						<input type="text" id="d11" value="${leave.lstarttime }" readonly="readonly" class="Wdate"
							onclick="WdatePicker()" name="leave.lstarttime" />
					</td>
					<td>
						<input type="text" id="d12" value="${leave.lendtime }" readonly="readonly" class="Wdate"
							onclick="WdatePicker()" name="leave.lendtime" />
					</td>
					<td>
						<input type="text" value="${leave.lcount }" id="ltime" onclick="gettime();" readonly="readonly" name="leave.lcount" />
					</td>
					<td>
						<input type="text" value="${leave.lreason  }" name="leave.lreason" />
					</td>
					<td>
						<input type="text" value="${leave.sid }" readonly="readonly" name="leave.sid" />
					</td>
					<td>
						<input type="radio" name="leave.lstatus" value="提交"  }/>提交
						<input type="radio" name="leave.lstatus" value="不提交" checked="checked"/>不提交
					</td>
					<td>
						<input type="submit" value="请假" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
