<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		<title>修改密码</title>

		<link rel="stylesheet" href="csss/style.css" />

		<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
		<script type="text/javascript" src="js/easyform.js"></script>
		<script type="text/javascript">
			function check(){
			
				if($("#psw1").val()==""){
					alert("新密码不能为空！！");
					return false;
				}
				
				if($("#psw2").val()==""){
					alert("请确认密码！！");
					return false;
				}
				
				if($("#psw1").val()!=$("#psw2").val()){
					alert("两次密码不一致");
					return false;
				}
				
			if($("#psw1").val()=="123"||$("#psw2").val()=="123"){
					alert("密码不能和初始密码一样");
					return false;
				}
				
			}
		</script>
	</head>
	<body>
		<br />
			<br />
			<br />
			<br />
		<div class="form-div">
			<form action="loginafter!updstu.action" method="post"   onsubmit="return check();" >
				<table>
					<tr>
						<td>
							初始密码
						</td>
						<td>
							<input  type="text" name="psw" readonly="readonly" value="${session.userpwd}" />
						</td>
					</tr>
					<tr>
						<td>
							新建密码
						</td>
						<td>
							<input type="password" name="psw1"  id="psw1" value="${pwdd}" />
						</td>
					</tr>
					<tr>
						<td>
							确认密码
						</td>
						<td>
							<input  type="password" name="psw2" id="psw2"
								 />
						</td>
					</tr>
					<tr  align="center" >
					<td colspan="2">
					<input value="提交"  type="submit"  class="scbtn"/>
					<a  href="../mdefault.jsp"  class="scbtn">返回首页面</a><font  style="color: red;font-size:small">${stauts}</font>
						</td>
						</tr>
				</table>
				</form>
		</div>
		<script type="text/javascript">
$(document).ready(function(){
	$('#reg-form').easyform();
});
</script>


	</body>
</html>
