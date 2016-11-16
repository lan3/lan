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

		<form action="leave!add.action" method="post">
			<table align="center" width="100%" class="zyhovertable">
				<tr>
					<th>
						学生ID
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
						状态
					</th>
					<th>
						准假人
					</th>	
					<th>
						操作
					</th>
				</tr>
				<tr>
					
					<td>
						<input type="text" name="stuleave.intenid" />
					</td>
					<td>
						<select name="stuleave.lcont">
							<option value="休假">
								休假
							</option>
							<option value="病假">
								病假
							</option>
							<option value="事假">
								事假
							</option>
							<option value="婚假">
								婚假
							</option>
							<option value="丧假">
								丧假
							</option>
							<option value="产假">
								产假
							</option>
							<option value="陪产假">
								陪产假
							</option>
							<option value="其他">
								其他
							</option>
						</select>
					</td>
					
					<td>
						<input type="text" id="d11" readonly="readonly" class="Wdate"
							onclick="WdatePicker()" name="stuleave.startdate" />
					</td>
					<td>
						<input type="text" id="d12" readonly="readonly" class="Wdate"
							onclick="WdatePicker()"  name="stuleave.endtime"   />
					</td>
					
					
					<td>
						<input type="radio" name="stuleave.lstatus" value="提交"/>提交
						<input type="radio" name="stuleave.lstatus" value="不提交"/>不提交
					</td>
					<td>
						<input type="text" name="stuleave.eid" />
					</td>
					<td>
						<input type="submit" value="请假" />
						<a href="stuleave!list.action">请假列表</a>
					</td>
				</tr>
			</table>
		</form>
	</body>
	
</html>
