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
		<style>
	body { overflow-x:hidden; }
</style>
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
	<%
		Object obj= request.getSession().getAttribute("limits");
		List quan=new ArrayList();
		if(obj!=null){
		 quan=(List)obj;
		}
	%>
		<div class="lefttop">
			<span></span>菜单
		</div>

		<dl class="leftmenu">

			<dd>
				<div class="title">
					<span><img src="images/leftico01.png" />
					</span>日常办公
				</div>
				<ul class="menuson">
					<%
						if(quan.contains("1")){
						%>
						<li>
							<cite></cite><a href="dept!list.action" target="rightFrame">部门管理</a><i></i>
						</li>
						<%
						}
					%>
					<%
						if(quan.contains("2")){
						%>
							<li>
								<cite></cite><a href="emp!list.action" target="rightFrame">员工管理</a><i></i>
							</li>
						<%
						}
					%>
					<%
						if(quan.contains("3")){
						%>
					<li>
						<cite></cite><a href="report!list.action" target="rightFrame">工作日志管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("4")){
						%>
					<li>
						<cite></cite><a href="report!sellist.action" target="rightFrame">查看工作日志</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("45")){
					%>
					<li>
						<cite></cite><a href="kaoqin!list.action" target="rightFrame">我的考勤</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("46")){
					%>
					<li>
						<cite></cite><a href="kaoqin!listall.action" target="rightFrame">上级查看考勤</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("5")){
					%>
					<li>
						<cite></cite><a href="wcheckdesc!list.action" target="rightFrame">考勤异议说明</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("6")){
					%>
					<li>
						<cite></cite><a href="wcheckdesc!shlist.action" target="rightFrame">考勤异议说明审核</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("7")){
					%>
					<li>
						<cite></cite><a href="leave!list.action" target="rightFrame">请/休假管理</a><i></i>
					</li>  
					<%
						}
					%>
					<%
						if(quan.contains("8")){
					%>
					<li>
						<cite></cite><a href="leave!shlist.action" target="rightFrame">请/休假审批</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("9")){
					%>
					<li>
						<cite></cite><a href="overtime!list.action" target="rightFrame">加班管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("10")){
					%>
					<li>
						<cite></cite><a href="overtime!shlist.action" target="rightFrame">加班管理审批</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("11")){
					%>
					<li>
						<cite></cite><a href="duty!list.action" target="rightFrame">值班管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("12")){
					%>
					<li>
						<cite></cite><a href="duty!sellist.action" target="rightFrame">查看值班管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("13")){
					%>
					<li>
						<cite></cite><a href="patrol!list.action" target="rightFrame">班级巡查</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("14")){
					%>
					<li>
						<cite></cite><a href="patrol!sellist.action" target="rightFrame">查看班级巡查</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("15")){
					%>
					<li>
						<cite></cite><a href="patrolshuse!list.action" target="rightFrame">宿舍巡查</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("16")){
					%>
					<li>
						<cite></cite><a href="patrolshuse!sellist.action" target="rightFrame">查看宿舍巡查</a><i></i>
					</li>
					<%
						}
					%>
					
				</ul>
			</dd>
			<dd>
				<div class="title">
					<span><img src="images/leftico02.png" />
					</span>教务管理
				</div>
				<ul class="menuson">
					<%
						if(quan.contains("17")){
					%>
					<li>
						<cite></cite><a href="imglist1.jsp" target="rightFrame">课程管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("18")){
					%>
					<li>
						<cite></cite><a href="edudbackelist" target="rightFrame">教员反馈</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("19")){
					%>
					<li>
						<cite></cite><a href="edutofaculist" target="rightFrame">学生反馈入口</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("20")){
					%>
					<li>
						<cite></cite><a href="edutofacutolist" target="rightFrame">教员反馈-查看结果</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("21")){
					%>
					<li>
						<cite></cite><a href="tratotra" target="rightFrame">研讨会记录</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("22")){
					%>
					<li>
						<cite></cite><a href="tratralist" target="rightFrame">研讨会-查看</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("23")){
					%>
					<li>
						<cite></cite><a href="objectimglist" target="rightFrame">课程进度管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("24")){
					%>
					<li>
						<cite></cite><a href="objectimgtolist" target="rightFrame">课程进度查看</a><i></i>
					</li>
					<%
						}
					%>
				</ul>
			</dd>


			<dd>
				<div class="title">
					<span><img src="images/leftico03.png" />
					</span>学生管理
				</div>
				<ul class="menuson">
					<%
						if(quan.contains("25")){
					%>
					<li>
						<cite></cite><a href="class!list.action" target="rightFrame">班级管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("26")){
					%>
					<li>
						<cite></cite><a href="hour!list.action" target="rightFrame">宿舍管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("27")){
					%>
					<li>
						<cite></cite><a href="stu!stulist.action" target="rightFrame">学生管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("28")){
					%>
					<li>
						<cite></cite><a href="say!list.action"  target="rightFrame">谈心记录</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("29")){
					%>
					<li>
						<cite></cite><a href="score!list.action"  target="rightFrame">成绩管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("30")){
					%>
					<li>
						<cite></cite><a href="num!list.action" target="rightFrame">学生总结</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("31")){
					%>
					<li>
						<cite></cite><a href="web!weblist.action" target="rightFrame">项目答辩管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("32")){
					%>
					<li>
						<cite></cite><a href="job!list.action" target="rightFrame">就业管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("33")){
					%>
					<li>
						<cite></cite><a href="com!cls.action" target="rightFrame">备用电脑申领</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("34")){
					%>
					<li>
						<cite></cite><a href="com!empteach.action" target="rightFrame">备用电脑审批</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("35")){
					%>
					<li>
						<cite></cite><a href="leve!cls.action" target="rightFrame">请假管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("36")){
					%>
					<li>
						<cite></cite><a href="leve!teachty.action" target="rightFrame">请假审批</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("48")){
					%>
					<li>
						<cite></cite><a href="view!query.action" target="rightFrame">学生意见反馈</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("49")){
					%>
					<li>
						<cite></cite><a href="view!viewlist.action" target="rightFrame">查看学生意见反馈</a><i></i>
					</li>
					<%
						}
					%>
					
				</ul>
			</dd>
			<dd>
				<div class="title">
					<span><img src="images/leftico04.png" />
					</span>财务管理
				</div>
				<ul class="menuson">
					<%
						if(quan.contains("37")){
					%>
					<li>
						<cite></cite><a href="moncomputerlist" target="rightFrame">电脑领用管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("38")){
					%>
					<li>
						<cite></cite><a href="monlist" target="rightFrame">学生收费管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("39")){
					%>
					<li>
						<cite></cite><a href="monmonlist"  target="rightFrame">收入管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("40")){
					%>
					<li>
						<cite></cite><a href="monpaylist"  target="rightFrame">支出管理</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("41")){
					%>
					<li>
						<cite></cite><a href="monpayslist" target="rightFrame">工资管理</a><i></i>
					</li>
					<%
						}
					%>
				</ul>

			</dd>
			<dd>
				<div class="title">
					<span><img src="images/leftico04.png" />
					</span>招生管理
				</div>
				<ul class="menuson">
					<%
						if(quan.contains("42")){
					%>
					<li>
						<cite></cite><a href="inten!intelist.action" target="rightFrame">意向学生登记</a><i></i>
					</li>
					<%
						}
					%>
				</ul>
			<dd>
				<div class="title">
					<span><img src="images/leftico04.png" />
					</span>通知公告
				</div>
				<ul class="menuson">
					<%
						if(quan.contains("43")){
					%>
					<li>
						<cite></cite><a href="tab.jsp" target="rightFrame">发布通知</a><i></i>
					</li>
					<%
						}
					%>
					<%
						if(quan.contains("44")){
					%>
					<li>
						<cite></cite><a href="msglist.action" target="rightFrame">已发布通知</a><i></i>
					</li>
					<%
						}
					%>
						<%
						if(quan.contains("47")){
					%>
					<li>
						<cite></cite><a href="sslist.action" target="rightFrame">编辑通知</a><i></i>
					</li>
					<%
						}
					%>
				</ul>
			</dd>
			<dd>
				<div class="title">
					<span><img src="images/leftico04.png" />
					</span>权限管理
				</div>
				<ul class="menuson">
					<%
						if(quan.contains("100")){
					%>
					<li>
						<cite></cite><a href="limit!list.action" target="rightFrame">更改权限</a><i></i>
					</li>
					<%
						}
					%>
				</ul>
			</dd>
		</dl>

	</body>
</html>
