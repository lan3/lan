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

		<title>My JSP 'reportadd.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script type="text/javascript" src="js/jquery.js"></script>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<link href="css/select.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
		<script type="text/javascript" src="js/select-ui.min.js"></script>
		<script type="text/javascript" src="editor/kindeditor.js"></script>
		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript">
  	  	KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
		<script type="text/javascript">
		function getbln(){
			var now =new Date();
			var year= now.getFullYear();
			var month= now.getMonth()+1;
			
			if(month<10){
				month="0"+month;
			}
			var day= now.getDate();
			if(day<10){
				day="0"+day;
			}
			var str=year+"-"+month+"-"+day;
			$.post("report!check.action",{"str":str},function(data){
				var bln=data.bln;
				if(bln){     //是true 已添加记录 
					document.getElementById("pand").value=bln;	
				}
			},"json");
		}
		function check(){
			var time=document.getElementById("d11").value;
			var now =new Date();
			var year= now.getFullYear();
			var month= now.getMonth()+1;
			
			if(month<10){
				month="0"+month;
			}
			var day= now.getDate();
			if(day<10){
				day="0"+day;
			}
			var str=year+"-"+month+"-"+day;
			if(time>str){
				alert("日期还未到，无权添加日志!");
				return false;
			}
			if(document.getElementById("pand").value =='true'){
				alert("亲，您已添加过今天的今天的日志了呦！");
				return false;
			}
		}
	</script>
	</head>

	<body>
		<div class="formbody">
			<div id="usual1" class="usual">
				<div class="itab">
					<ul>
						<li>
							<a href="#tab1" class="selected">日志记录</a>
						</li>
					</ul>
				</div>
				<div id="tab1" class="tabson">
					<form action="report!add.action" onsubmit="return check();" method="post">
						<ul class="forminfo">
							<li>
								<label>
									员工
								</label>
								<input type="hidden" id="pand">
								<input name="ename" type="text" value="${session.name }"
									readonly="readonly" class="dfinput" />
							</li>
							<li>
								<label>
									日期
								</label>
								<cite><input type="text" id="d11" readonly="readonly"
										class="dfinput" class="Wdate" onclick="WdatePicker()"
										name="report.rdate" onchange="getbln();" /> </cite>
							</li>
							<li>
								<label>
									日志记录
								</label>
								<textarea
									style="border-top: solid 1px #a7b5bc; border-left: solid 1px #a7b5bc; border-right: solid 1px #ced9df; border-bottom: solid 1px #ced9df; background: url(../images/inputbg.gif) repeat-x; padding: 10px; width: 345px; height: 135px; line-height: 20px; overflow: hidden;"
									rows="8" cols="8" name="report.rsummary"></textarea>
							</li>
							<li>
								<label>
									&nbsp;
								</label>
								<input type="submit" class="btn" value="确认保存" />
							</li>
						</ul>
					</form>
					<CENTER style="margin-top: -48px; margin-left: -400px">
						<button onclick="back();" class="btn">
							返回
						</button>
					</CENTER>
				</div>
				<script type="text/javascript">
					function back(){
						location.href="report!list.action";
					}
				</script>
	</body>
</html>
