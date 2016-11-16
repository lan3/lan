<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>工资修改</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
  <form action="monpaysupd" method="post">
  <input name="ps.paysid" type="hidden" value="${ps.paysid }">
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
											<option value="${ps.ejob }">
												${ps.ejob }
											</option>
									</select>
								</div>
							</li>
						</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>员工姓名</label>
						<input  class="dfinput" name="ps.payname" value="${ps.payname }" type="text"/>
						</li>
					</ul>
					
					</td>
				</tr>
				<tr>
					<td>
					<ul class="forminfo">
						<li>
						<label>	薪资标准</label>
						<input class="dfinput" name="ps.paynorm" value="${ps.paynorm }" id="w" type="text"
							class="dfinput">
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>	考核天数</label>
						<input class="dfinput" name="ps.checkdata" type="text" value="${ps.checkdata }" value="26"
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
						<input  class="dfinput" id="f3" name="ps.othermon" value="${ps.othermon }" type="text"/>
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>社保</label>
						<input  class="dfinput"  id="f4" name="ps.socialmon" value="${ps.socialmon }" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td>
					<ul class="forminfo">
						<li>
						<label>住房公积金</label>
						<input  class="dfinput" id="f5" name="ps.noasingfaud" value="${ps.noasingfaud }" type="text"/>
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>个税</label>
						<input  class="dfinput" id="f6" name="ps.incometax" value="${ps.incometax }" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<ul class="forminfo">
						<li>
						<label>应税工资</label>
						<input  class="dfinput" name="ps.echotaxmon" id="f7" value="${ps.echotaxmon }" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<ul class="forminfo">
						<li>
						<label>备注</label>
						<textarea id="content6"  name="ps.remark" cols="80">${ps.remark }</textarea>
						</li>
					</ul>
					</td>
				</tr>
			</table>
			<input type="submit" class="btn" value="修改">
  </form>
  
  </body>
</html>
