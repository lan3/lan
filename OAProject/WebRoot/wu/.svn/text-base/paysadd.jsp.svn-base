<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

		<title>工资添加</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<link href="css/select.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
		<script type="text/javascript" src="js/select-ui.min.js"></script>
		<script type="text/javascript" src="editor/kindeditor.js"></script>
		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
     KE.show({
        id : 'content6',
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
	</head>

	<body>
		<form action="monpaysadd" method="post">
			<table>
				<tr>
					<td>
						<ul class="forminfo">
							<li>
								<label>
									员工职务
								</label>
								<div class="vocation">
									<select name="ps.ejob" class="select1">
										<c:forEach items="${list}" var="s">
											<option value="${s.EJOB }">
												${s.EJOB }
											</option>
										</c:forEach>
									</select>
								</div>
							</li>
						</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>员工姓名</label>
						<input  class="dfinput" name="ps.payname" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td>
					<ul class="forminfo">
						<li>
						<label>	薪资标准</label>
						<input class="dfinput" name="ps.paynorm" id="w" type="text"
							class="dfinput">
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>	考核天数</label>
						<input class="dfinput" name="ps.checkdata" type="text" value="26"
							readonly="false">
						</li>
					</ul>
					</td>
				</tr>
				
				<tr>
					<td>
					<ul class="forminfo">
						<li>
						<label>其他工资</label>
						<input  class="dfinput" id="f3" name="ps.othermon" type="text"/>
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>社保</label>
						<input  class="dfinput"  id="f4" name="ps.socialmon" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td>
					<ul class="forminfo">
						<li>
						<label>住房公积金</label>
						<input  class="dfinput" id="f5" name="ps.noasingfaud" type="text"/>
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>个税</label>
						<input  class="dfinput" id="f6" name="ps.incometax" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<ul class="forminfo">
						<li>
						<label>应税工资</label>
						<input  class="dfinput" name="ps.echotaxmon" id="f7" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<ul class="forminfo">
						<li>
						<label>备注</label>
						<textarea id="content6"  name="ps.remark" cols="80"></textarea>
						</li>
					</ul>
					</td>
				</tr>
			</table>
			<input type="submit" class="btn" value="添加">
		</form>
	</body>
</html>
