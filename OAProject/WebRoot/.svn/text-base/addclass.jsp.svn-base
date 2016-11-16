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
    <li><a href="#">添加班级</a></li>
    </ul>
    </div>
    <div class="formbody">
    <div id="usual1" class="usual"> 
    <div class="itab">
  	<ul> 
    <li><a href="#" class="selected">添加班级</a></li> 
  	</ul>
    </div> 
  	<div id="tab1" class="tabson">
  <form action="class!add.action" method="post">
    	<ul class="forminfo" >
					<li style="padding-left: 70px;">
						<label style="width: 60px;">
						班级名称
					</label><input type="text" name="c.classname"  style="width: 200px"  class="dfinput" />
				</li>
		<!-- 
			<li style="padding-left: 70px;">
						<label style="width: 60px;">
						任课老师
					</label><select name="c.empteach"   class="dfinput" />
    				<c:forEach items="${emp}" var="e"  >
	    				<option value="${e.ENAME }" ><font  style="color:#66ffff;font-size: small" >${e.ENAME }</font></option>
    				</c:forEach>
    					</select>
				</li>-->				
				<li style="padding-left: 70px;">
					<label  style="width: 60px;">
						任课老师:
					</label>
					<div class="vocation">
					<select name="c.empteach"   class="select3"  >
					<c:forEach items="${emp}" var="e">
	    				<option value="${e.ENAME }">${e.ENAME }</option>
    				</c:forEach>
					</select>
					</div>
				</li>			
				
							<li style="padding-left: 70px;">
					<label  style="width: 60px;">
						辅导老师:
					</label>
					<div class="vocation">
					<select  name="c.eid"   class="select3"  >
					<c:forEach items="${emp}" var="e">
	    				<option value="${e.ENAME }">${e.ENAME }</option>
    				</c:forEach>
					</select>
					</div>
				</li>		
				
											
				<li style="padding-left: 70px;">
					<label  style="width: 60px;">
						班主任:
					</label>
					<div class="vocation">
					<select  name="c.empteaches"   class="select3"  >
					<c:forEach items="${emp}" var="e">
	    				<option value="${e.ENAME }">${e.ENAME }</option>
    				</c:forEach>
					</select>
					</div>
				</li>
				
				
				
				<li style="padding-left: 70px;">
						<label style="width: 60px;">
						班级地址
					</label><input type="text" name="c.classaddr" style="width: 200px"  class="dfinput" />
				</li>
				<li style="padding-left: 100px; color: white;">
					<label>
						<input type="submit" style="padding-left: 0px;" value="提交" class="scbtn" />
						
					</label>
					<label>
						<input type="reset" style="padding-left: 0px;" value="取消" class="scbtn" />
						<label>
				</li>
</ul>
<!-- 

    	
    	<tr bgcolor="white">
    		<td colspan="2" align="center">
    			<input type="submit" value="添加">
    		</td>
    	</tr>
   -->
    </form>
    </div>
  </body>
</html>
