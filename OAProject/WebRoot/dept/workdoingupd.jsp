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
		<link href="css/select.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
		<script type="text/javascript" src="js/select-ui.min.js"></script>
		<script type="text/javascript" src="editor/kindeditor.js"></script>
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
					<form action="wdoing!upd.action"  method="post">
						<ul class="forminfo">
							<li>
								<label>
									员工
								</label>
								<div class="vocation">
									<select name="wd.eid" class="select1">
										<c:forEach items="${emplist}" var="emp">
											<option value="${emp.EID }" ${emp.EID==wd.eid?'selected':'' }>${emp.ENAME }</option>
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
									<option value="星期日" ${wd.wdate=='星期日'?'selected':'' }>星期日</option>	
									<option value="星期一" ${wd.wdate=='星期一'?'selected':'' }>星期一</option>
									<option value="星期二" ${wd.wdate=='星期二'?'selected':'' }>星期二</option>
									<option value="星期三" ${wd.wdate=='星期三'?'selected':'' }>星期三</option>
									<option value="星期四" ${wd.wdate=='星期四'?'selected':'' }>星期四</option>
									<option value="星期五" ${wd.wdate=='星期五'?'selected':'' }>星期五</option>
									<option value="星期六" ${wd.wdate=='星期六'?'selected':'' }>星期六</option>	
								</select>
								</div>
							</li>
							<li>
								<label>
									值班范围
								</label>
								<div class="vocation">
								<select name="wd.wfanwei" class="select1">
									<option value="机房一楼" ${wd.wfanwei=='机房一楼'?'selected':'' }>机房一楼</option>	
									<option value="机房二楼" ${wd.wfanwei=='机房二楼'?'selected':'' }>机房二楼</option>
									<option value="办公楼二楼" ${wd.wfanwei=='办公楼二楼'?'selected':'' }>办公楼二楼</option>
									<option value="办公楼三楼" ${wd.wfanwei=='办公楼三楼'?'selected':'' }>办公楼三楼</option>
									<option value="办公楼四楼" ${wd.wfanwei=='办公楼四楼'?'selected':'' }>办公楼四楼</option>
									<option value="职素课" ${wd.wfanwei=='职素课'?'selected':'' }>职素课</option>
									<option value="多媒体" ${wd.wfanwei=='多媒体'?'selected':'' }>多媒体</option>
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
										<option value="${emp.EID }" ${emp.EID==wd.bid?'selected':'' }>${emp.ENAME }</option>
									</c:forEach>
								</select>
								</div>
							</li>
							<li>
								<label>
									总值班
								</label>
								<input type="hidden" class="dfinput" value="${wd.wid }" readonly="readonly" name="wd.wid"/>
								<input type="text" class="dfinput" value="廖文汉" readonly="readonly" name="wd.total"/>
							</li>
							<li>
								<label>
									&nbsp;
								</label>
								<input type="submit" class="btn" value="确认修改" />
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
		</form>
	</body>
</html>
