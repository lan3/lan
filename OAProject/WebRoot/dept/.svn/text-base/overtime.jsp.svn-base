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
		<form action="overtime!add.action" onsubmit="return comp();" method="post">
			<ul class="forminfo">
				<li>
					<label>
						姓名
					</label>
					<input name="empname" id="ename" type="text" value="${empname }" readonly="readonly" class="dfinput" />
				</li>
				<li>
					<label>
						开始时间
					</label>
					<cite> <input type="text" id="d11" readonly="readonly"
					class="dfinput"	class="Wdate" onclick="WdatePicker()" name="over.ostart" />
					</cite>
				</li>
				<li>
					<label>
						结束时间
					</label>
					<input type="text" id="d12" readonly="readonly" class="dfinput"	 class="Wdate"
					 onclick="WdatePicker()" name="over.oend" />
				</li>
				<li>
					<label>
						审批人
					</label>
					<select class="dfinput" id="empname" name="over.osid" >
						<c:forEach items="${emplist}" var="emp">
							<option value="${emp.EID }">${emp.ENAME }</option>
						</c:forEach>
					</select>
				</li>
				<li>
					<label>
						加班原因
					</label>
					<textarea class="textinput" rows="8" cols="10" name="over.oreason"></textarea>
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
	</body>
	<script type="text/javascript">
		function back(){
			location.href="overtime!list.action";
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
</html>
