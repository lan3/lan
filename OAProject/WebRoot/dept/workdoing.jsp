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
			function gettel(){
				$.post("wdoing!seltel.action",{},function(data){
					var list=data.list;
					var table=$("<table>",{
						"align":"center",
						"border":"1",
						"width":"40%"
					});
						var tr2=$("<tr>");
						var td3=$("<td>",{
							"text":"值班老师"
						});
						var td4=$("<td>",{
							"text":"联系电话"
						});
						table.append(tr2);
					$.each(list,function(index,tel){
						var tr=$("<tr>");
						var td1=$("<td>",{
							"text":tel.ENAME
						});
						var td2=$("<td>",{
							"text":tel.WTEL
						});
						tr2.append(td3);
						tr2.append(td4);
						tr.append(td1);
						tr.append(td2);
						table.append(tr);
					});
					$("#show").html(table);
				},"json");
			}
		</script>
	</head>

	<body>
		<form action="wdoing!add.action" method="post">
		<table cellspacing="1" align="center" width="40%" bgcolor="#000000">
			<tr bgcolor="white">
				<th>
					巡查人
				</th>
				<td>
					<select name="wd.eid">
						<c:forEach items="${list}" var="emp">
							<option value="${emp.EID }">${emp.ENAME }</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					巡查日期
				</th>
				<td>
					<select name="wd.wdate">
						<option value="星期日">星期日</option>	
						<option value="星期一">星期一</option>
						<option value="星期二">星期二</option>
						<option value="星期三">星期三</option>
						<option value="星期四">星期四</option>
						<option value="星期五">星期五</option>
						<option value="星期六">星期六</option>	
					</select>
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					巡查范围
				</th>
				<td>
					<select name="wd.wfanwei">
						<option value="机房一楼">机房一楼</option>	
						<option value="机房二楼">机房二楼</option>
						<option value="办公楼三楼">办公楼三楼</option>
						<option value="办公楼四楼">办公楼四楼</option>
						<option value="职素课">职素课</option>
						<option value="多媒体">多媒体</option>
					</select>
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					班主任
				</th>
				<td>
					<select name="wd.bid">
						<c:forEach items="${list}" var="emp">
							<option value="${emp.EID }">${emp.ENAME }</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					总值班
				</th>
				<td>
					<input type="text" name="wd.total" value="廖文汉" />
				</td>
			</tr>
			<tr bgcolor="white">
				<td colspan="2"><input type="submit" value="添加"/>
					<a href="wdoing!list.action">值班安排列表</a>
				</td>
			</tr>
		</table>
		</form>
		<button onclick="gettel();">值班老师电话</button>
		<div id="show">
			
		</div>
	</body>
</html>
