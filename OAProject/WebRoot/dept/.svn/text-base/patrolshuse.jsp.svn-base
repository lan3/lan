<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

		<title>宏图软件班主任日常巡查记录</title>

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
				$.post("patrolshuse!selcount.action",{"cname":cname},function(data){
					var list=data.list;  //获取宿舍号列表
					$("#hoursenum").html("");
					$.each(list,function(index,hourse){
						var option1=$("<option>",{
							"text":hourse.HOURMARK,
							"val":hourse.HOURMARK
						});
						$("#hoursenum").append(option1);
					});
					
				},"json");
			}
			function getnum(){
				var num=document.getElementById("hoursenum").value;//获取宿舍号
				$.post("patrolshuse!selcount.action",{"num":num},function(data){
					var hcount=data.hcount;  //获取宿舍号人數
					document.getElementById("count").value=hcount;
				},"json");
			}
		</script>
	</head>

	<body>
		<div class="formbody">
			<div id="usual1" class="usual">
				<div class="itab">
					<ul>
						<li>
							<a href="#tab1" class="selected">宿舍巡查</a>
						</li>
					</ul>
				</div>
				<div id="tab1" class="tabson">
					<form action="patrolshuse!add.action" method="post">
						<ul class="forminfo">
						<li>
								<label>
									巡查人
								</label>
								<input name="ename" type="text" value="${ename }" readonly="readonly" class="dfinput" />
							</li>
							<li>
								<label>
									巡查日期
								</label>
								<cite><input type="text" id="d11" readonly="readonly"
										class="dfinput" class="Wdate"
										onclick="WdatePicker()"
										name="patrols.hdate" /> </cite>
							</li>
							<li>
								<label>
									巡查时间
								</label>
								<cite><input type="text" id="d11" readonly="readonly"
										class="dfinput" class="Wdate"
										onclick="WdatePicker({dateFmt:'HH:mm:ss'})"
										name="patrols.htime" /> </cite>
							</li>
							<li>
								<label>
									宿舍
								</label>
								<div class="vocation">
									<select name="patrols.hoursename" class="select1" id="cname"
										onchange="getcount();">
										<option value="">
											--请选择宿舍--
										</option>
										<c:forEach items="${list}" var="hourse">
											<option value="${hourse.HOURSEAT }">
												${hourse.HOURSEAT }
											</option>
										</c:forEach>
									</select>
								</div>
							</li>
							<li>
								<label>
									寝室号
								</label>
								<div class="vocation">
									<select id="hoursenum" onchange="getnum();" class="select1"
										name="patrols.hoursenum">
									</select>
								</div>
							</li>
							<li>
								<label>
									应到人数
								</label>
								<input type="text" class="dfinput" id="count" name="patrols.ycount" />
							</li>
							<li>
								<label>
									实到人数
								</label>
								<input type="text" class="dfinput" name="patrols.scount" />
							</li>
							<li>
								<label>
									寝室卫生
								</label>
								<div class="vocation">
									<select name="patrols.hdesc" class="select1">
										<option value="好">
											好
										</option>
										<option value="一般">
											一般
										</option>
										<option value="差">
											差
										</option>
									</select>
								</div>
							</li>
							<li>
								<label>
									意见或反馈
								</label>
								<textarea style="border-top:solid 1px #a7b5bc; border-left:solid 1px #a7b5bc; border-right:solid 1px #ced9df; border-bottom:solid 1px #ced9df; background:url(../images/inputbg.gif) repeat-x; padding:10px; width:345px; height:135px; line-height:20px; overflow:hidden;" rows="8" cols="8"  name="patrols.hadvice"></textarea>
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
							<img src="images/su.jpg" />
						</div>
					<CENTER style="margin-top: 82px;margin-left: -400px">
						<button onclick="back();"  class="btn">返回</button>
					</CENTER>
				</div>
				<script type="text/javascript">
					function back(){
						location.href="patrolshuse!list.action";
					}
				</script>
	</body>
</html>
