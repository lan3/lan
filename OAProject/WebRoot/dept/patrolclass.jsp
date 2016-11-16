<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

		<title> 宏图软件班主任日常巡查记录 </title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
		<link href="css/select.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
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
		<script type="text/javascript">
			function getcount(){
				var cname=document.getElementById("cname").value;
				$.post("patrol!selcount.action",{"cname":cname},function(data){
					var num=data.count;   //获取班级人数
					document.getElementById("count").value=num;
					var tlist=data.tlist;
					$("#teacher").html("");   
					$.each(tlist,function(index,teacher){  //任课老师
						if(teacher.CLASSNAME==cname){
							var option=$("<option>",{
								"text":teacher.EMPTEACH,
								"val":teacher.EMPTEACH
							});
							$("#teacher").append(option); 
						}
					});
					
				},"json");
			}
		</script>
	</head>

	<body>
	<div id="usual1" class="usual">
				<div class="itab">
					<ul>
						<li>
							<a href="#tab1" class="selected">班級巡查</a>
						</li>
					</ul>
				</div>
				<div id="tab1" class="tabson">
					<form action="patrol!add.action" method="post">
		<ul class="forminfo">
				<li>
					<label>
						巡查人
					</label>
					<input name="ename" type="text" readonly="readonly" value="${ename }" class="dfinput" />
				</li>
				<li>
					<label >
						巡查日期
					</label>
					<cite> 
					<input type="text" id="d11" readonly="readonly"
					class="dfinput"	class="Wdate" onclick="WdatePicker()" name="patrol.pdatetime" />
					</cite>
				</li>
				<li>
					<label>
						巡查时间
					</label>
					<div class="vocation">
					<select name="patrol.ptime" class="select1">
						<option value="08:00:00">08:00:00</option>
						<option value="11:00:00">11:00:00</option>
						<option value="14:00:00">14:00:00</option>
						<option value="16:00:00">16:00:00</option>
						<option value="19:00:00">19:00:00</option>
						<option value="20:00:00">20:00:00</option>
					</select>
					</div>
				</li>
				<li>
					<label>
						班级
					</label>
					<div class="vocation">
					<select name="patrol.pclass" id="cname" class="select1" onchange="getcount();">
						<option value="">--请选择班级--</option>
						<c:forEach items="${list}" var="class">
							<option value="${class.CLASSNAME }">${class.CLASSNAME }</option>
						</c:forEach>
					</select>
					</div>
				</li>
				<li>
					<label>
						应到人数
					</label>
					<input type="text" id="count" class="dfinput" name="patrol.ycount" />
				</li>
				<li>
					<label>
						实到人数
					</label>
					<input type="text"  class="dfinput" name="patrol.scount" />
				</li>
				<li>
					<label>
						教室卫生
					</label>
					<div class="vocation">
						<select name="patrol.wcdesc" class="select1">
							<option value="好">好</option>
							<option value="一般">一般</option>
							<option  value="差">差</option>
						</select>
					</div>
				</li>
				<li>
					<label>
						任课老师
					</label>
					<div class="vocation">
						<select id="teacher" name="patrol.tname" class="select1">
						</select>
					</div>
				</li>
				<li>
					<label>
						是否到岗
					</label>
					<div class="vocation">
					<select name="patrol.tisstay" class="select1">
						<option value="是">是</option>
						<option value="否">否</option>
					</select>
					</div>
				</li>
				<li>
					<label>
						是否教学
					</label>
					<div class="vocation">
					<select name="patrol.tisdo" class="select1">
						<option value="是">是</option>
						<option value="否">否</option>
					</select>
					</div>
				</li>
				<li>
					<label>
						学生违纪情况
					</label>
					<textarea  style="border-top:solid 1px #a7b5bc; border-left:solid 1px #a7b5bc; border-right:solid 1px #ced9df; border-bottom:solid 1px #ced9df; background:url(../images/inputbg.gif) repeat-x; padding:10px; width:345px; height:135px; line-height:20px; overflow:hidden;" rows="8" cols="10" name="patrol.studesc"></textarea>
				</li>
				<li>
					<label>
						&nbsp;
					</label>
					<input type="submit" class="btn" value="确认保存" />
				</li>
			</ul>
		</form>
		<div style="padding-left: 540px;margin-top: -580px;">
			<img src="images/class.jpg" />
		</div>
		<CENTER style="margin-top: 224px;margin-left: -400px">
		<button onclick="back();"  class="btn">返回</button>
		</CENTER>
	</div>
	<script type="text/javascript">
		function back(){
			location.href="patrol!list.action";
		}
	</script>
	</body>
</html>
