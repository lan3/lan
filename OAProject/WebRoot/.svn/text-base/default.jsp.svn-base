<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jsapi.js"></script>
		<script type="text/javascript"
			src="js/format+zh_CN,default,corechart.I.js"></script>
		<script type="text/javascript" src="js/jquery.gvChart-1.0.1.min.js"></script>
		<script type="text/javascript" src="js/jquery.ba-resize.min.js"></script>
		<script src="layer/laycode.min.js"></script>
		<script src="layer/demo.js"></script>
		<script src="layer/jquery.min.js"></script>
		<script src="layer/layer.js"></script>
		<script>
		 $.post("mainbuty",{},function(data){
		 		var list=data.list;
		 		var emplist=data.emplist;
		 		$.each(list,function(i,wdoing){
		 				var duty=list[i];
		 			var tr=$("<tr>");
		 			var ename="";
		 			$.each(emplist,function(j,emp){
		 				if(emp.EID==wdoing.eid){
		 					ename=emp.ENAME;
		 				}
		 			});
		 			var td2=$("<td>",{
		 				"text":ename
		 			});
		 			var td3=$("<td>",{
		 				"text":wdoing.wdate
		 			});
		 			var td4=$("<td>",{
		 				"text":wdoing.wfanwei 
		 			});
		 			var name="";
		 			$.each(emplist,function(j,emp){
		 				if(emp.EID==wdoing.bid){
		 					name=emp.ENAME;
		 				}
		 			});
		 			var td5=$("<td>",{
		 				"text":name
		 			});
		 			var td6=$("<td>",{
		 				"text":wdoing.total
		 			});
		 			tr.append(td2);
		 			tr.append(td3);
		 			tr.append(td4);
		 			tr.append(td5);
		 			tr.append(td6);
		 			$("#tabProduct").append(tr);
		 		});
		 },"json");
	</script>
		<script>
		$.post("mainmsg",{},function(data){
			var list=data.list;
			$.each(list,function(i,msg){
				var li=$("<li>");
				var a=$("<a>",{
					"href":"msgsel.action?msg.msgid="+msg.msgid,
					"text":msg.msgtitle
				});
				li.append(a);
				$("#msglist").append(li);
			});
		},"json");
	</script>
		<script>
		$.post("maindaiban",{},function(data){
			var b1=$("<b>",{
				"text":data.leg1+"条"
			});
			var b2=$("<b>",{
				"text":data.leg2+"条"
			});
			var b3=$("<b>",{
				"text":data.leg3+"条"
			});
			var b4=$("<b>",{
				"text":data.leg4+"条"
			});
			var b5=$("<b>",{
				"text":data.leg5+"条"
			});
			$("#leg1").append(b1);
				$("#leg1").append(b1);
				$("#leg2").append(b2);
				$("#leg3").append(b3);
				$("#leg4").append(b4);
				$("#leg5").append(b5);
		},"json");
	</script>
		<script>
			$.post("mainphon",{},function(data){
				var list=data.list;
				$.each(list,function(i,p){
					var tr=$("<tr>");
					var td1=$("<td>",{
						"text":p.ENAME
					});
					var td2=$("<td>",{
						"text":p.ETEL
					});
					tr.append(td1);
					tr.append(td2);
					$("#phon").append(tr);
				});
			},"json");
	</script>
		<script>
		$.post("maintongji",{},function(data){
			document.getElementById("empa").innerHTML=data.count1;
			document.getElementById("stua").innerHTML=data.count2;
			document.getElementById("classa").innerHTML=data.count3;
			document.getElementById("obja").innerHTML=data.count4;
		},"json");
	</script>

	</head>




	<body >

		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="default.jsp">首页</a>
				</li>
			</ul>
		</div>


		<div class="mainbox">

			<div class="mainleft">


				<div class="leftinfo">
					<div class="listtitle">
						<a href="wdoing!list.action" class="more1">更多</a>值班安排
					</div>
					<table class="tablelist" id="tabProduct">
						<tr>
							<th>
								员工姓名
							</th>
							<th>
								值班日期
							</th>
							<th>
								值班范围
							</th>
							<th>
								班主任
							</th>
							<th>
								总值班
							</th>
						</tr>

					</table>

				</div>
				<!--leftinfo end-->


				<div class="leftinfos">


					<div class="infoleft">

						<div class="listtitle">
							待办事项
						</div>

						<ul class="newlist">
							<li id="leg1">
								<a href="wcheckdesc!shlist">考勤审批</a>
							</li>
							<li id="leg2">
								<a href="leave!shlist">员工请假审批</a>
							</li>
							<li id="leg3">
								<a href="overtime!shlist">加班审批</a>
							</li>
							<li id="leg4">
								<a href="leve!depty.action">学生请假审批</a>
							</li>
							<li id="leg5">
								<a href="com!dept.action">备用电脑申领</a>
							</li>
						</ul>

					</div>


					<div class="inforight">
						<div class="listtitle">
							<a href="emp!list.action" class="more1">更多</a>员工通讯录
						</div>
						<table class="tablelist" id="phon">

						</table>
					</div>


				</div>


			</div>
			<!--mainleft end-->


			<div class="mainright">


				<div class="dflist">
					<div class="listtitle">
						<a href="msglist.action" class="more1">更多</a>最新信息
					</div>
					<ul class="newlist" id="msglist">

					</ul>
				</div>
				<div class="dflist1">
					<div class="listtitle">
						信息统计
					</div>
					<ul class="newlist">
						<li>
							<i>员工数：</i><font id="empa"></font>
						</li>
						<li>
							<i>学生数：</i><font id="stua"></font>
						</li>
						<li>
							<i>班级数：</i><font id="classa"></font>
						</li>
						<li>
							<i>课程数：</i><font id="obja"></font>
						</li>
					</ul>
				</div>





			</div>
			<!--mainright end-->


		</div>

		<script type="text/javascript">
	setWidth();
	$(window).resize(function(){
		setWidth();	
	});
	function setWidth(){
		var width = ($('.leftinfos').width()-12)/2;
		$('.infoleft,.inforight').width(width);
	}
	
</script>

	</body>

</html>
