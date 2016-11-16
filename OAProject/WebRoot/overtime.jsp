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
		<title>New Document</title>
		<meta name="Generator" content="EditPlus">
		<meta name="Author" content="">
		<meta name="Keywords" content="">
		<meta name="Description" content="">
	</head>
	<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
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
	background-color: #0000FF;
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
	<body>
		<h1>
			<b><center>
					加班申请表
				</center> </b>
		</h1>
		<table class="zyhovertable" align="center">
			<tr>
				<td>
					申请人姓名
				</td>
				<td>
					<input type="text" />
				</td>
				<td>
					申请日期
				</td>
				<td>
					<input type="text" onclick="WdatePicker()" id="d11"
						readonly="readonly" name="leave.lcount" class="Wdate" />

				</td>
			</tr>
			<tr>
				<td>
					申请人部门
				</td>
				<td>
					<input type="text" />
				</td>
				<td>
					申请人岗位
				</td>
				<td>
					<input type="text" />
				</td>
			</tr>
			<tr>
				<td>
					加班时间
				</td>
				<td colspan="3">
					<input type="text" id="d11" readonly="readonly" class="Wdate"
						onclick="WdatePicker()" name="leave.lendtime" />
					至
					<input type="text" id="d12" readonly="readonly" class="Wdate"
						onclick="WdatePicker()" name="leave.lendtime" />

				</td>
			</tr>
			<tr>
				<td>
					工作内容
				</td>
				<td colspan="3">
					<input type="text" />
				</td>
			</tr>


			<tr>
				<td>
					附件
				</td>
				<td colspan="3">
					<input name="msg.msgaccessory" type="file" />
				</td>
			</tr>

			<tr>
				<td>
					审批人意见
				</td>
				<td colspan="3">
					<input type="text" />
				</td>
			</tr>


		</table>

	</body>
</html>

