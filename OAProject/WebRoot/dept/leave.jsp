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
		<div class="formtitle">
			<span>请假信息</span>
		</div>
		<form action="leave!add.action" onsubmit="return comp();" method="post">
			<ul class="forminfo">
				<li>
					<label>
						姓名
					</label>
					<input name="ename" id="ename" type="text" value="${ename }" readonly="readonly" class="dfinput" />
				</li>
				<li>
					<label>
						请假类型
					</label>
					<select class="dfinput"	 name="leave.ltypename">
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
					<i></i>
				</li>
				<li>
					<label>
						开始时间
					</label>
					<cite> <input type="text" id="d11" readonly="readonly"
					class="dfinput"	class="Wdate" onclick="WdatePicker()" name="leave.lstarttime" />
					</cite>
				</li>
				<li>
					<label>
						结束时间
					</label>
					<input type="text" id="d12" readonly="readonly" class="dfinput"	 class="Wdate"
					 onclick="WdatePicker()" name="leave.lendtime" />
				</li>
				<li>
					<label>
						天数
					</label>
					<input type="text" onclick="gettime();" id="ltime"
					class="dfinput"	readonly="readonly" name="leave.lcount" />
				</li>
				<li>
					<label>
						下一审批人
					</label>
					<select id="empname" class="dfinput" name="leave.sid" >
						<c:forEach items="${emplist}" var="emp">
							<option value="${emp.EID }">${emp.ENAME }</option>
						</c:forEach>
					</select>
				</li>
				<li>
					<label>
						详情说明
					</label>
					<textarea class="textinput" rows="8" cols="10" name="leave.lreason"></textarea>
				</li>
				<li>
					<label>
						&nbsp;
					</label>
					<input type="submit" class="btn" value="确认保存" />
				</li>
			</ul>
		</form>
		<CENTER style="margin-top: -49px;margin-left: -400px">
		<button onclick="back();"  class="btn">返回</button>
		
		</CENTER>
		<script type="text/javascript">
			function back(){
				location.href="leave!list.action";
			}
			function comp(){  //js判断
				var empname=document.getElementById("empname");
				var ename=document.getElementById("ename").value;
				for(var i=0;i<empname.length;i++){
					if(empname[i].selected==true){
						var text=empname[i].text;
						
						if(text==ename){
							alert("亲,不能让自己审批呦！");
							return false;
						}else{
							return true;
						}
					}
				}
			}
		</script> 
	</body>

</html>
