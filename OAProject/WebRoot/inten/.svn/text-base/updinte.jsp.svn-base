<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/select-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/editor/kindeditor.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js"></script>
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
</head>
	<body>
		<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="default.jsp">首页</a></li>
    <li><a href="#">意向学生修改</a></li>
    </ul>
    </div>
    <div class="formbody">
    <div id="usual1" class="usual"> 
    <div class="itab">
  	<ul> 
    <li><a href="#" class="selected">意向学生修改</a></li> 
  	</ul>
    </div> 
  	<div id="tab1" class="tabson">
	
		<form id="frm" action="inten!upd.action" method="post">
			<input   type="hidden"  name="inte.intendid" value="${inte.intendid }" /> 
			<ul class="forminfo" >
				
				<li style="padding-left: 50px;">
					<input   type="hidden"  name="inte.intendid" value="${inte.intendid }" 
						class="dfinput" />
				</li>
				
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						学生姓名:
					</label>
					<input type="text"  style="width: 200px" name="inte.intenname"  value="${inte.intenname}"
						class="dfinput" />
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						学生性别:
					</label>
					<label >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"   value="男" name="inte.intensex" ${inte.intensex=='男'?'checked':''}  />男</label>
					<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="女" name="inte.intensex"   ${inte.intensex=='女'?'checked':''} />女</label>
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						学生年龄:
					</label>
					<input type="text" style="width: 200px" name="inte.intenage" value="${inte.intenage}"
						class="dfinput" />
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						出生日期:
					</label>
					<input type="text" style="width: 200px" name="inte.intenbir" value="${inte.intenbir}"
						class="dfinput" />
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						就读高中:
					</label>
					<input type="text" style="width: 200px" name="inte.intensch" value="${inte.intensch}"
						class="dfinput" />
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						联系QQ:
					</label>
					<input type="text" style="width: 200px"      name="inte.intenqq" value="${inte.intenqq}"
						class="dfinput"/>
				</li>
				<li style="padding-left:50px;">
					<label style="width: 60px;">
						联系电话:
					</label>
					<input type="text" style="width: 200px" name="inte.intentel"  value="${inte.intentel}"
						class="dfinput" />
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						家庭住址:
					</label>
					<input type="text" style="width: 200px" name="inte.intenaddr" value="${inte.intenaddr}"
						class="dfinput" />
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						推荐老师:<!-- ${inte.enames=='${e.ENAME}'?'selected':''} -->
					</label>
					<div  class="vocation">
					<select  name="inte.enames"   class="select3"   >
						<c:forEach items="${list}" var="e">
							<option  ${inte.enames == e.ENAME ? 'selected':''}>${e.ENAME}</option>
						</c:forEach>
					</select>
					</div>
				</li>
				
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						登记时间:
					</label>
					<input type="text" style="width: 200px" name="inte.intendate" value="${inte.intendate}"
					  readonly="readonly" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" />
				</li>
				
				<li style="padding-left: 100px; color: white;">
					<label>
						<input type="submit" style="padding-left: 0px;" value="提交"  class="scbtn" />
					</label>
					<label>
						<input type="submit" style="padding-left: 0px;" value="取消" class="scbtn"/>
						<label>
				</li>
			</ul>
		</form>
		</div>
	</body>
</html>
