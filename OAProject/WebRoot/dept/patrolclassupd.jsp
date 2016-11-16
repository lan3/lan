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
		
		<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
		
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
								"text":teacher.EMPTEACHES,
								"val":teacher.EMPTEACHES
							});
							$("#teacher").append(option); 
						}
					});
					
				},"json");
			}
		</script>
	</head>

	<body>
		<form action="patrol!upd.action" method="post">
		<table cellspacing="1" align="center" width="40%" bgcolor="#000000">
			<tr bgcolor="white">
				<th>
					巡查人
				</th>
				<td>
					<input type="hidden" name="patrol.pid" value="${patrol.pid }"/>
					<input type="text" name="patrol.eid" value="${patrol.eid }"/>
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					巡查日期
				</th>
				<td>
					<input type="text" id="d11" readonly="readonly" class="Wdate"
							onclick="WdatePicker()" name="patrol.pdatetime" value="${patrol.pdatetime }" />
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					巡查时间
				</th>
				<td>
					<select name="patrol.ptime">
						<option value="08:00:00" ${patrol.ptime=="08:00:00"?'selected':'' }>08:00:00</option>
						<option value="11:00:00" ${patrol.ptime=="11:00:00"?'selected':'' }>11:00:00</option>
						<option value="14:00:00" ${patrol.ptime=="14:00:00"?'selected':'' }>14:00:00</option>
						<option value="16:00:00" ${patrol.ptime=="16:00:00"?'selected':'' }>16:00:00</option>
						<option value="19:00:00" ${patrol.ptime=="19:00:00"?'selected':'' }>19:00:00</option>
						<option value="20:00:00" ${patrol.ptime=="20:00:00"?'selected':'' }>20:00:00</option>
					</select>
				</td>
			</tr>
			<tr bgcolor="white">
				<th bgcolor="white">
					班级
				</th>
				<td>
					<select name="patrol.pclass" id="cname" onchange="getcount();">
						<option value="" >--请选择班级--</option>
						<c:forEach items="${list}" var="class">
							<option ${class.CLASSNAME==patrol.pclass?'selected':'' }>${class.CLASSNAME }</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					应到人数
				</th>
				<td>
					<input type="text" id="count" value="${patrol.ycount }" name="patrol.ycount" />
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					实到人数
				</th>
				<td>
					<input type="text" value="${patrol.scount }" name="patrol.scount" />
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					教室卫生
				</th>
				<td>
					<input type="radio" name="patrol.wcdesc" value="好" ${patrol.wcdesc=='好'?'checked':'' } />好
					<input type="radio" name="patrol.wcdesc" value="一般"  ${patrol.wcdesc=='一般'?'checked':'' } />一般
					<input type="radio" name="patrol.wcdesc" value="差"  ${patrol.wcdesc=='差'?'checked':'' } />差
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					任课老师
				</th>
				<td>
					<select id="teacher"  name="patrol.tname">
					</select>
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					任课老师是否到岗
				</th>
				<td>
					<input type="radio" name="patrol.tisstay"  value="是" ${patrol.tisstay=='是'?'checked':'' }/>是
					<input type="radio" name="patrol.tisstay" value="否" ${patrol.tisstay=='否'?'checked':'' } />否
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					学生违纪违规情况
				</th>
				<td>
					<textarea rows="10" cols="20" name="patrol.studesc">${patrol.studesc }</textarea>
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					任课老师是否在做教学相关事情
				</th>
				<td bgcolor="white">
					<input type="radio" name="patrol.tisdo" value="是" ${patrol.tisdo=='是'?'checked':'' } />是
					<input type="radio" name="patrol.tisdo" value="否" ${patrol.tisdo=='否'?'checked':'' }/>否
				</td>
			</tr>
			<tr bgcolor="white">
				<td colspan="2"><input type="submit" value="修改记录"/></td>
			</tr>
		</table>
		</form>
	</body>
</html>
