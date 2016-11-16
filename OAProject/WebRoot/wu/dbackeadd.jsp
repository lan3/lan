<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script src="layer/layer.js"></script>
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
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="default.jsp">首页</a></li>
    <li><a href="#">教员月度反馈添加</a></li>
    </ul>
    </div>
    <div class="formbody">
    <div id="usual1" class="usual"> 
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">新增教员反馈</a></li> 
  	</ul>
    </div> 
  	<div  class="tabson">
    <form action="edudbackeadd" method="post" onsubmit="return y()">
    <ul class="forminfo">
    <li><label>教员</label>  
    <div class="vocation">
    <select name="db.eid" class="select1">
    	<c:forEach items="${l}" var="s">
		  			<option value="${s.EID }">${s.ENAME }</option>
		  	</c:forEach>
    </select>
    </div>
    </li>
     <li><label>班级</label>  
    <div class="vocation">
    <select name="db.classname" class="select1">
    	<c:forEach items="${li}" var="s">
		  			<option value="${s.CLASSNAME }">${s.CLASSNAME }</option>
		  	</c:forEach>
    </select>
    </div>
    </li>
    <li><label>反馈月份</label><input id="yue" name="db.DMonth" type="text"  class="dfinput" onclick="WdatePicker({startDate:'%y-%M',dateFmt:'yyyy-MM',readOnly:true})" style="width:518px;"/></li>
    <li><label>&nbsp;</label><input  type="submit"  class="btn" value="添加"/></li>
    </ul>
     </form>
    </div> 
    </div>
    </div>
    <script>
    	function y(){
    		var yue=$("#yue").val();
    		if(yue==null||yue==""){
    			alert("月份不能为空！");
    			return false;
    		}
    	}
    </script>
</body>

</html>
