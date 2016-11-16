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
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>
<script type="text/javascript" src="editor/kindeditor.js"></script>

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
    <li><a href="#">电脑领用修改</a></li>
    </ul>
    </div>
    <div class="formbody">
    <div id="usual1" class="usual"> 
    <div class="itab">
  	<ul> 
    <li><a href="#" class="selected">电脑领用</a></li> 
  	</ul>
    </div> 
  	<div id="tab1" class="tabson">
    <form action="moncomputerupd" method="post">
     <input type="hidden" value="${c.cpid }" name="com.cpid"/>
     <input type="hidden" value="${c.cpdata }" name="com.cpdata"/>
    <ul class="forminfo">
    <li><label>学生姓名</label><input name="com.interid" type="text" value="${c.interid}" class="dfinput" style="width:518px;"/></li>
    <li><label>电脑序号</label><input name="com.comid" type="text" value="${c.comid}" class="dfinput" style="width:518px;"/></li>
    <li><label>领取人签名</label><input name="com.cpname" type="text" value="${c.cpname}" class="dfinput" style="width:518px;"/></li>
    <li><label>是否赠送</label>  
    <div class="vocation">
    <select name="com.isgave" class="select1">
    <option value="是" ${com.isgave=='是'? 'checked':'' }>是</option>
    <option value="不是" ${com.isgave=='不是'? 'checked':'' }>不是</option>
    </select>
    </div>
    </li>
    <li><label>&nbsp;</label><input  type="submit" class="btn" value="修改"/></li>
    </ul>
    </form>
    </div> 
</body>

</html>
