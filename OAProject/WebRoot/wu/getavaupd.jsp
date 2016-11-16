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
  <form action="mongetpaysupd" method="post">
  <input name="g.paysid" type="hidden" value="${ps.paysid }">
  <input name="g.payststuss" type="hidden" value="${ps.payststuss }">
    <table>
				<tr>
					<td>
						<ul class="forminfo">
							<li>
								<label>
									员工职务
								</label>
								<div class="vocation">
									<select name="g.ejob" class="select1">
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
						<input  class="dfinput" name="g.payname" value="${ps.payname }" type="text"/>
						</li>
					</ul>
					
					</td>
				</tr>
				<tr>
					<td>
					<ul class="forminfo">
						<li>
						<label>	考核天数</label>
						<input class="dfinput" name="g.checkdata" type="text" value="${ps.checkdata }" value="26"
							readonly="false">
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
					
						<li>
						<label>	薪资标准</label>
						<input class="dfinput" name="g.paynorm" value="${ps.paynorm }" id="w" type="text"
							class="dfinput">
						</li>
					</ul>
					
					</td>
				</tr>
				<tr>
					<td>
					<ul class="forminfo">
						<li>
						<label>病事假</label>
						<input  class="dfinput"  id="w1" name="g.sickdata" value="${ps.sickdata }" type="text"/>
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>未出勤</label>
						<input  class="dfinput"  name="g.outdata" id="w2" value="${ps.outdata }" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td>
					<ul class="forminfo">
						<li>
						<label>其他</label>
						<input  class="dfinput"  id="w3" name="g.otherdata" value="${ps.otherdata }" type="text"/>
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>扣款金额</label>
						<input  class="dfinput"  name="g.buslowmon" value="${ps.buslowmon }" id="q2" onclick="qq()" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td>
					<ul class="forminfo">
						<li>
						<label>出勤工资</label>
						<input  class="dfinput"  id="q3" onclick="qw()" value="${ps.intodata }" name="g.intodata" type="text"/>
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>满勤奖励</label>
						<input  class="dfinput" name="g.falldata" id="q4" value="${ps.falldata }" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td>
					<ul class="forminfo">
						<li>
						<label>应发工资</label>
						<input  class="dfinput" id="q5" onclick="qe()" name="g.shouldmon" value="${ps.shouldmon }" type="text"/>
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>违纪罚款</label>
						<input  class="dfinput"  name="g.defyepochfine" id="f1" value="${ps.defyepochfine }" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td>
					<ul class="forminfo">
						<li>
						<label>迟到</label>
						<input  class="dfinput" id="f2" name="g.comedatamon" value="${ps.comedatamon }" type="text"/>
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>其他工资</label>
						<input  class="dfinput" id="f3" name="g.othermon" value="${ps.othermon }" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td>
					<ul class="forminfo">
						<li>
						<label>社保</label>
						<input  class="dfinput"  id="f4" name="g.socialmon" value="${ps.socialmon }" type="text"/>
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>住房公积金</label>
						<input  class="dfinput" id="f5" name="g.noasingfaud" value="${ps.noasingfaud }" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td>
					<ul class="forminfo">
						<li>
						<label>个税</label>
						<input  class="dfinput" id="f6" name="g.incometax" value="${ps.incometax }" type="text"/>
						</li>
					</ul>
					</td>
					<td>
					<ul class="forminfo">
						<li>
						<label>应税工资</label>
						<input  class="dfinput" name="g.echotaxmon" id="f7" value="${ps.echotaxmon }" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<ul class="forminfo">
						<li>
						<label>实发工资</label>
						<input  class="dfinput" id="q8" onclick="as()" value="${ps.homepay }" name="g.homepay" type="text"/>
						</li>
					</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<ul class="forminfo">
						<li>
						<label>备注</label>
						<textarea id="content6"  name="g.remark" cols="80">${ps.remark }</textarea>
						</li>
					</ul>
					</td>
				</tr>
			</table>
			<input type="submit" class="btn" value="修改">
  </form>
  </body>
</html>
