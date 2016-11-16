<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
    <li><a href="#">添加支出</a></li>
    </ul>
    </div>
    <div class="formbody">
    <div id="usual1" class="usual"> 
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">添加支出</a></li> 
  	</ul>
    </div> 
  	<div id="tab1" class="tabson">
    <form action="monpayadd" method="post">
    <ul class="forminfo">
    <li><label>支出项目</label>  
    <div class="vocation">
    <select name="p.payitem" class="select1">
    <option value="员工工资">员工工资</option>
    <option value="公司旅游">公司旅游</option>
    <option value="年终奖">年终奖</option>
    <option value="接待">接待</option>
    <option value="办公用品">办公用品</option>
    <option value="报销">报销</option> 
    <option value="其他">其他</option>
    </select>
    </div>
    </li>
    <li><label>支出金额</label><input name="p.paycount" type="text" class="dfinput" style="width:518px;"/></li>
    <li><label>经手人</label><input name="p.sname" type="text" class="dfinput" style="width:518px;"/></li>
    <li><label>备注</label>
    <textarea id="content7" name="p.paypro" style="width:700px;height:250px;visibility:hidden;"></textarea>
    </li>
    <li><label>&nbsp;</label><input type="submit" class="btn" value="添加"/></li>
    </ul>
     </form>
    </div> 
</body>

</html>
