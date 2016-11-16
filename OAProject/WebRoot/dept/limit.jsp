<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

		<title>My JSP 'limit.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="js/jquery.js"></script>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
  	  	KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
		<script type="text/javascript">
		$(document).ready(function(){
		 $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
</script>

	</head>
	<%
		List quan=new ArrayList();
		Object obj= request.getAttribute("limit");
		if(obj!=null){
			quan = (List)obj;
		}
	%>
	<body>

		<form action="limit!add.action" method="post">
		<ul class="forminfo" style="padding-top: 40px;">
			<li style="padding-left: 100px;">
				<label style="width: 100px; font-size: large;"> 
					日常管理: 
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="hidden" name="limit.eid" value="${eid }" />
								<input type="checkbox" name="qqq" class="dfinput" 
									style="width: 20px; height: 30px;" value="1"
										<%if(quan.contains("1")){%> checked="checked" <% } %>/>
							</td>
							<td>
								部门管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;"  value="2"
										<%if(quan.contains("2")){%> checked="checked" <% } %>  />
							</td>
							<td>
								员工管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="3"
										<%if(quan.contains("3")){%> checked="checked" <% } %>/>
							</td>
							<td>
								工作日志
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="4"
										<%if(quan.contains("4")){%> checked="checked" <% } %> />
							</td>
							<td>
								查看日志
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="45"
										<%if(quan.contains("45")){%> checked="checked" <% } %> />
							</td>
							<td>
								我的考勤
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="46"
										<%if(quan.contains("46")){%> checked="checked" <% } %> />
							</td>
							<td>
								上级查看考勤
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="5"
										<%if(quan.contains("5")){%> checked="checked" <% } %> />
							</td>
							<td>
								考勤异议
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="6"
										<%if(quan.contains("6")){%> checked="checked" <% } %> />
							</td>
							<td>
								考勤审批
							</td>
						</tr>
					</table>
				</label>
			</li>
			<li>
			<label style="width: 100px;padding-left: 200px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="7"
										<%if(quan.contains("7")){%> checked="checked" <% } %>  />
							</td>
							<td>
								请/休假管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="8"
										<%if(quan.contains("8")){%> checked="checked" <% } %> />
							</td>
							<td>
								请/休假审批
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="9"
										<%if(quan.contains("9")){%> checked="checked" <% } %> />
							</td>
							<td>
								加班申请
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="10"
										<%if(quan.contains("10")){%> checked="checked" <% } %> />
							</td>
							<td>
								加班审批
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="11"
										<%if(quan.contains("11")){%> checked="checked" <% } %> />
							</td>
							<td>
								值班管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="12"
										<%if(quan.contains("12")){%> checked="checked" <% } %> />
							</td>
							<td>
								查看值班
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="13"
										<%if(quan.contains("13")){%> checked="checked" <% } %> />
							</td>
							<td>
								班级巡查
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="14"
										<%if(quan.contains("14")){%> checked="checked" <% } %> />
							</td>
							<td>
								查看班级巡查
							</td>
						</tr>
					</table>
				</label>
				
			</li>
			<li>
				<label style="width: 100px;padding-left: 200px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="15"
										<%if(quan.contains("15")){%> checked="checked" <% } %> />
							</td>
							<td>
								宿舍巡查
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="16"
										<%if(quan.contains("16")){%> checked="checked" <% } %> />
							</td>
							<td>
								查看宿舍巡查
							</td>
						</tr>
					</table>
				</label>
			</li>
				
			<br />
			<br />
			<br />
			<li style="padding-left: 100px;">
				<label style="width: 100px; font-size: large;">
					教务管理:
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="17"
										<%if(quan.contains("17")){%> checked="checked" <% } %>/>
							</td>
							<td>
								查看课程
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="18"
										<%if(quan.contains("18")){%> checked="checked" <% } %>/>
							</td>
							<td>
								教员反馈
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="19"
										<%if(quan.contains("19")){%> checked="checked" <% } %>/>
							</td>
							<td>
								教员反馈入口
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="20"
										<%if(quan.contains("20")){%> checked="checked" <% } %>/>
							</td>
							<td>
								教员反馈查看
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="21"
										<%if(quan.contains("21")){%> checked="checked" <% } %>/>
							</td>
							<td>
								研讨会
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="22"
										<%if(quan.contains("22")){%> checked="checked" <% } %>/>
							</td>
							<td>
								研讨会-记录
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="23"
										<%if(quan.contains("23")){%> checked="checked" <% } %>/>
							</td>
							<td>
								课程进度
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="24"
										<%if(quan.contains("24")){%> checked="checked" <% } %>/>
							</td>
							<td>
								课程进度查看
							</td>
						</tr>
					</table>
				</label>
			</li>
			<br />
			<br />
			<br />
			<li style="padding-left: 100px;">
				<label style="width: 100px; font-size: large;">
					学生管理:
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="25"
										<%if(quan.contains("25")){%> checked="checked" <% } %>/>
							</td>
							<td>
								班级管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="26"
										<%if(quan.contains("26")){%> checked="checked" <% } %>/>
							</td>
							<td>
								宿舍管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="27"
										<%if(quan.contains("27")){%> checked="checked" <% } %>/>
							</td>
							<td>
								学生管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="28"
										<%if(quan.contains("28")){%> checked="checked" <% } %>/>
							</td>
							<td>
								谈心记录
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="29"
										<%if(quan.contains("29")){%> checked="checked" <% } %> />
							</td>
							<td>
								成绩管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="30"
										<%if(quan.contains("30")){%> checked="checked" <% } %>/>
							</td>
							<td>
								学生总结
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="31"
										<%if(quan.contains("31")){%> checked="checked" <% } %>/>
							</td>
							<td>
								项目答辩管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="32"
										<%if(quan.contains("32")){%> checked="checked" <% } %>/>
							</td>
							<td>
								就业管理
							</td>
						</tr>
					</table>
				</label>
			</li>
			<li>
				<label style="width: 100px;padding-left: 200px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="33"
										<%if(quan.contains("33")){%> checked="checked" <% } %>/>
							</td>
							<td>
								备用电脑申领
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px; ">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="34"
										<%if(quan.contains("34")){%> checked="checked" <% } %>/>
							</td>
							<td>
								备用电脑审批
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="35"
										<%if(quan.contains("35")){%> checked="checked" <% } %>/>
							</td>
							<td>
								请假管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="36"
										<%if(quan.contains("36")){%> checked="checked" <% } %>/>
							</td>
							<td>
								请假审批
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="48"
										<%if(quan.contains("48")){%> checked="checked" <% } %>/>
							</td>
							<td>
								学生意见反馈
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="49"
										<%if(quan.contains("49")){%> checked="checked" <% } %>/>
							</td>
							<td>
								查看学生意见反馈
							</td>
						</tr>
					</table>
				</label>
			</li>
			<br />
			<br />
			<br />
			<li style="padding-left: 100px;">
				<label style="width: 100px; font-size: large;">
					财务管理:
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="37"
										<%if(quan.contains("37")){%> checked="checked" <% } %>/>
							</td>
							<td>
								电脑领用管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="38"
										<%if(quan.contains("38")){%> checked="checked" <% } %>/>
							</td>
							<td>
								学生收费管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="39"
										<%if(quan.contains("39")){%> checked="checked" <% } %>/>
							</td>
							<td>
								收入管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="40"
										<%if(quan.contains("40")){%> checked="checked" <% } %>/>
							</td>
							<td>
								支出管理
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="41"
										<%if(quan.contains("41")){%> checked="checked" <% } %>/>
							</td>
							<td>
								工资管理
							</td>
						</tr>
					</table>
				</label>
			</li>
			<br />
			<br />
			<br />
			<li style="padding-left: 100px;">
				<label style="width: 100px; font-size: large;">
					招生管理:
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="42"
										<%if(quan.contains("42")){%> checked="checked" <% } %>/>
							</td>
							<td>
								意向学生登记
							</td>
						</tr>
					</table>
				</label>
			</li>
			<br />
			<br />
			<br />
			<li style="padding-left: 100px;">
				<label style="width: 100px; font-size: large;">
					通知公告:
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="43"
										<%if(quan.contains("43")){%> checked="checked" <% } %>/>
							</td>
							<td>
								发布通知
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="44"
										<%if(quan.contains("44")){%> checked="checked" <% } %>/>
							</td>
							<td>
								已发布通知
							</td>
						</tr>
					</table>
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="47"
										<%if(quan.contains("47")){%> checked="checked" <% } %>/>
							</td>
							<td>
								编辑通知
							</td>
						</tr>
					</table>
				</label>
			</li>
			<br />
			<br />
			<br />
			<li style="padding-left: 100px;">
				<label style="width: 100px; font-size: large;">
					权限管理:
				</label>
				<label style="width: 100px;">
					<table>
						<tr>
							<td>
								<input type="checkbox" name="qqq" class="dfinput"
									style="width: 20px; height: 30px;" value="100"
										<%if(quan.contains("100")){%> checked="checked" <% } %>/>
							</td>
							<td>
								修改权限
							</td>
						</tr>
					</table>
				</label>
			</li>
			<li>
				<label style="width: 100px;padding-left: 200px;">
					<table>
						<tr>
							<td>
								<input type="submit" value="修改" class="btn" style="width: 80px;height:30px;"/>
							</td>
						</tr>
					</table>
				</label>
			</li>
		</ul>
		</form>
	</body>
</html>
