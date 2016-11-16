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
		<form action="patrolshuse!upd.action" method="post">
		<table cellspacing="1" align="center" width="40%" bgcolor="#000000">
			<tr bgcolor="white">
				<th>
					巡查人
				</th>
				<td>	
					<input type="hidden" name="patrols.psid" value="${patrols.psid }"/>
					<input type="text" name="patrols.eid" value="${patrols.eid }" />
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					巡查日期
				</th>
				<td>
					<input type="text" id="d11" readonly="readonly" class="Wdate"
							onclick="WdatePicker()" value="${patrols.hdate }" name="patrols.hdate" />
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					巡查时间
				</th>
				<td>
					<input type="text" id="d11" readonly="readonly" class="Wdate"
							onclick="WdatePicker({dateFmt:'HH:mm:ss'})" value="${ patrols.htime}" name="patrols.htime" />
				</td>
			</tr>
			<tr bgcolor="white">
				<th bgcolor="white">
					宿舍
				</th>
				<td>
					<select name="patrols.hoursename" id="cname" onchange="getcount();">
						<option value="">--请选择宿舍--</option>
						<c:forEach items="${list}" var="hourse">
							<option ${hourse.HOURSEAT==patrols.hoursename?'selected':'' }>${hourse.HOURSEAT }</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr bgcolor="white">
				<th bgcolor="white">
					寝室号
				</th>
				<td>
					<select id="hoursenum"  onchange="getnum();" name="patrols.hoursenum">
					</select>
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					应到人数
				</th>
				<td>
					<input type="text" id="count" value="${patrols.ycount }" readonly="readonly" name="patrols.ycount" />
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					实到人数
				</th>
				<td>
					<input type="text" name="patrols.scount" value="${patrols.scount }" />
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					教室卫生
				</th>
				<td>
					<input type="radio" name="patrols.hdesc" value="好" ${patrols.hdesc=='好'?'checked':'' } />好
					<input type="radio" name="patrol.hdesc" value="一般" ${patrols.hdesc=='一般'?'checked':'' }/>一般
					<input type="radio" name="patrol.hdesc" value="差"  ${patrols.hdesc=='差'?'checked':'' }/>差
				</td>
			</tr>
			<tr bgcolor="white">
				<th>
					意见或反馈
				</th>
				<td>
					<textarea rows="10" cols="20" name="patrols.hadvice">${patrols.hadvice }</textarea>
				</td>
			</tr>
			<tr bgcolor="white">
				<td colspan="2"><input type="submit" value="添加记录"/>
				</td>
				
			</tr>
		</table>
		</form>
	</body>
</html>
