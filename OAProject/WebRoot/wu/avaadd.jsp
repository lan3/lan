<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<title>无标题文档</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<link href="css/select.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script src="js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
		<script type="text/javascript" src="js/select-ui.min.js"></script>
		<script type="text/javascript" src="editor/kindeditor.js"></script>

		<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>

		<script type="text/javascript">
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
	</head>

	<body>

		<div class="place">
			<span><br />位置：</span>
			<ul class="placeul">
				<li>
					<a href="default.jsp">首页</a>
				</li>
				<li>
					<a href="#">新增学生收费</a>
				</li>
			</ul>
		</div>
		<div class="formbody">
			<div id="usual1" class="usual">
				<div class="itab">
					<ul>
						<li>
							<a href="#tab1" class="selected">新增学生收费</a>
						</li>
					</ul>
				</div>
				<div id="tab1" class="tabson">
					<form action="monadd" method="post" onsubmit="return y()">
						<ul class="forminfo">
							<li>
								<label>
									班级
								</label>
								<div class="vocation">
									<select name="ava.classname" class="select1">
										<c:forEach items="${list}" var="s">
											<option value="${s.CLASSNAME }">
												${s.CLASSNAME }
											</option>
										</c:forEach>
									</select>
								</div>
							</li>
							<li>
								<label>
									学生姓名
								</label>
								<input name="ava.sname" id="name" type="text" class="dfinput"
									style="width: 518px;" />
							</li>
							<li>
								<label>
									学期
								</label>
								<div class="vocation">
									<select name="ava.term" class="select1">
										<option value="1">
											第一学期
										</option>
										<option value="2">
											第二学期
										</option>
										<option value="3">
											第三学期
										</option>
										<option value="3">
											第四学期
										</option>
									</select>
								</div>
							</li>
							<li>
								<label>
									实际缴费
								</label>
								<input name="ava.avamon" id="num" type="number" class="dfinput"
									style="width: 518px;" />
							</li>
							<li>
								<label>
									缴费形式
								</label>
								<div class="vocation">
									<select name="ava.avafrom" class="select1">
										<option value="0">
											现金
										</option>
										<option value="1">
											银行转账
										</option>
										<option value="2">
											支付宝转账
										</option>
										<option value="3">
											支票
										</option>
									</select>
								</div>
							</li>
							<li>
								<label>
									&nbsp;
								</label>
								<input type="submit" class="btn" value="添加" />
							</li>
						</ul>
					</form>
				</div>
				<script>
					function y(){
						var name=$("#name").val();
						if(name==null||name==""){
							alert("姓名还没写！");
							return false;
						}
						var num=$("#num").val();
						if(num==null||num==""||num<0){
							alert("金额有误！");
							return false;
						}
					}
				</script>
	</body>

</html>
