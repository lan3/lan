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
		<title>无标题文档</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script language="JavaScript" src="js/jquery.js"></script>

		<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	
	$('.title').next('ul').slideUp();
		
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


	</head>

	<body style="background: #f0f9fd;">
		<div class="lefttop">
			<span></span>菜单
		</div>

		<dl class="leftmenu">

			
			<dd>
				<div class="title">
					<span><img src="images/leftico02.png" />
					</span>学生
				</div>
				<ul class="menuson">
					<li>
						<cite></cite><a href="leve!cls.action" target="rightFrame">请假</a><i></i>
					</li>
					<li>
						<cite></cite><a href="com!cls.action" target="rightFrame">备用电脑申领</a><i></i>
					</li>
					<li>
						<cite></cite><a href="view!query.action" target="rightFrame">学生反馈</a><i></i>
					</li>
				</ul>
			</dd>
			<dd>
				<div class="title">
					<span><img src="images/leftico02.png" />
					</span>学生反馈管理
				</div>
				<ul class="menuson">
					<li>
						<cite></cite><a href="edutofaculist" target="rightFrame">学生反馈入口</a><i></i>
					</li>
				</ul>
			</dd>
			<dd>
				<div class="title">
					<span><img src="images/leftico03.png" />
					</span>老师信息
				</div>
				<ul class="menuson">
					<li>
						<cite></cite><a href="class!list.action" target="rightFrame">联系方式</a><i></i>
					</li>
				</ul>
			</dd>


			
		
		</dl>
	</body>
</html>
