<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>教员月度反馈</title>
   		
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
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
</script>
 	
	
  </head>
  <script type="text/javascript">
  		function add(){
  			location.href="edutodbackeadd";
  		}
  </script>
  <body>
  
  <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="default.jsp">首页</a></li>
    <li><a href="#">教员反馈</a></li>
    </ul>
    </div>
    
    <table width="70%" id="mytab" class="imgtable" >
    	<tr>
    		<th>编号</th>
    		<th>月份</th>
    		<th>教员</th>
    		<th>状态</th>
    		<th>操作</th>
    	</tr>
    	<c:forEach items="${list}" var="dbacke">
    		<tr class="a1">
    			<td>${dbacke.D_ID }</td>
    			<td>${dbacke.D_MONTH }</td>
    			<td>${dbacke.ENAME }</td>
    			<td>${dbacke.D_STATUS==0? '<font color="green" >反馈中</font>':'<font color="red">已结束</font>' }</td>
    			<td><a href="edufacufind?ename=${dbacke.ENAME }" class="tablelink">查看</a></td>
    		</tr>
    	</c:forEach>
    </table>
    <div class="message">共<i class="blue">${totalpage }</i>条记录，当前显示第&nbsp;<i class="blue">${currpage+1 }&nbsp;</i>页</div>
    <div class="pagin">
    	<ul class="paginList">
        <li class="paginItem"><a href="edutofacutolist?currpage=${currpage-1 }"><span class="pagepre"></span></a></li>
		<c:forEach begin="1" end="${totalrow}" var="s">
			<li ${s==currpage ? 'class="paginItem current"':'class="paginItem"' }><a href="edutofacutolist?currpage=${s }">${s}</a></li>
		</c:forEach>
        <li class="paginItem"><a href="edutofacutolist?currpage=${currpage+1 }"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
  </body>
</html>
