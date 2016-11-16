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
    
    $(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
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
					<form action="wdoing!add.action"  method="post">
						<ul class="forminfo">
							<li>
								<label>
									员工
								</label>
								<div class="vocation">
									<select name="wd.eid" class="select1">
										<c:forEach items="${emplist}" var="emp">
											<option value="${emp.EID }">${emp.ENAME }</option>
										</c:forEach>
									</select>
								</div>
							</li>
							<li>
								<label>
									值班日期
								</label>
								<div class="vocation">
								<select name="wd.wdate" class="select1">
									<option value="星期日">星期日</option>	
									<option value="星期一">星期一</option>
									<option value="星期二">星期二</option>
									<option value="星期三">星期三</option>
									<option value="星期四">星期四</option>
									<option value="星期五">星期五</option>
									<option value="星期六">星期六</option>
								</select>
								</div>
							</li>
							<li>
								<label>
									值班范围
								</label>
								<div class="vocation">
								<select name="wd.wfanwei" class="select1">
									<option value="多媒体">多媒体</option>
									<option value="办公楼二楼">办公楼二楼</option>
									<option value="办公楼三楼">办公楼三楼</option>
									<option value="办公楼四楼">办公室四楼</option>
									<option value="机房一楼">机房一楼</option>
									<option value="机房二楼">机房二楼</option>
									<option value="职素课">职素课</option>
								</select>
								</div>
							</li>
							<li>
								<label>
									班主任
								</label>
								<div class="vocation">
								<select name="wd.bid" class="select1">
									<c:forEach items="${blist}" var="emp">
										<option value="${emp.EID }">${emp.ENAME }</option>
									</c:forEach>
								</select>
								</div>
							</li>
							<li>
								<label>
									总值班
								</label>
								<input type="text" class="dfinput" value="廖文汉" readonly="readonly" name="wd.total"/>
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
						location.href="wdoing!list.action";
					}
				</script>
	</body>
</html>
