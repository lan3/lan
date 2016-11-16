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
<title>工资管理</title>

		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script src="My97DatePicker/WdatePicker.js"></script>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<link href="css/select.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
		<script type="text/javascript" src="js/select-ui.min.js"></script>
		<script type="text/javascript" src="editor/kindeditor.js"></script>
		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});
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
		});

});
</script>


<style type="text/css">
table.zyhovertable {
    font-family: 
    verdana,arial,sans-serif;
    font-size:11px;
    color:#333333;
    border-width: 1px;
    border-collapse: 
    collapse;
	 border-color: #999999;
	 width:100%;
}

table.zyhovertable th {
    background-color:#C3DDE0;
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #999999;
}
table.zyhovertable td {
    border-width: 1px;
    padding: 8px;
    border-style: solid;
	 border-color: #999999;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>
<script>
	function tosel2(){
	var name=document.getElementById("empename").value;
	var data=document.getElementById("date").value;
		location.href="mongetlist?name="+name+"&data="+data;
	}
	function tosel1(){
		location.href="mondelegetpays";
	}
</script>
</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="default.jsp">首页</a></li>
    <li><a href="#">工资发放</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
       	<ul class="seachform">
        <li>
        	
						<div class="vocation">
						<select id="empename"  class="select3" >
							<option></option>
							<c:forEach items="${list}" var ="pay">
								<option value="${pay.PAYNAME }">${pay.PAYNAME }</option>
							</c:forEach>
						</select>
						</div>
					</li>
					<li>
						<label>
							时间:
						</label>
						<input type="text" id="date" class="scinput"  onclick="WdatePicker(WdatePicker({startDate:'%y-%M',dateFmt:'yyyy-MM',readOnly:true}))" />
					</li>
					<li>
						<label>
							&nbsp;
						</label>
						<input type="button"  onclick="tosel2();" class="btn" value="查询"  />
						<input type="button"  onclick="tosel1();" class="btn" value="清空工资表"  />
					</li>
        </ul>
					
      
    </div>
<table class="zyhovertable">
<tr> 
<th rowspan="2">职务</th>
<th rowspan="2">员工姓名</th>
<th rowspan="2">薪资标准</th>
<th rowspan="2">考核天数</th>
<th  colspan="3">缺勤天数</th>
<th rowspan="2">扣款金额</th>
<th rowspan="2">出勤工资</th>
<th rowspan="2">满勤奖</th>
<th  rowspan="2">应发工资</th>
<th  colspan="2">其他扣款</th>
<th rowspan="2">其他工资</th>
<th rowspan="2">应税工资</th>
<th colspan="3">代缴费用</th>
<th rowspan="2">实发工资</th>
<th rowspan="2">状态</th>
<th rowspan="2">操作</th>
</tr>

<tr>
<th>病事假 </th><th>未出勤 </th><th>其他</th>
<th>违纪罚款 </th><th>迟到/漏打卡
</th><th>社保 </th><th>住房公积金 </th><th>个税</th>
</tr>
<c:forEach items="${list}" var="pay">
<tr>
	<td>${pay.EJOB }</td>
	<td>${pay.PAYNAME }</td>
	<td>${pay.PAYNORM }</td>
	<td>${pay.CHECKDATA }</td>
	<td>${pay.SICKDATA }</td>
	<td>${pay.OUTDATA }</td>
	<td>${pay.OTHERDATA }</td>
	<td>${pay.BUSLOWMON }</td>
	<td>${pay.INTODATA }</td>
	<td>${pay.FALLDATA }</td>
	<td>${pay.SHOULDMON }</td>
	<td>${pay.DEFYEPOCHFINE }</td>
	<td>${pay.COMEDATAMON }</td>
	<td>${pay.OTHERMON }</td>
	<td>${pay.ECHOTAXMON }</td>
	<td>${pay.SOCIALMON }</td>
	<td>${pay.NOASINGFAUD }</td>
	<td>${pay.INCOMETAX }</td>
	<td>${pay.HOMEPAY }</td>
	<td>${pay.PAYSTSTUSS=='未发放'? '<font color="green">未发放</font>':'<font color="red">已发放</font>' }</td>
	<td>
	<a href="mongetpaystoupd?ps.paysid=${pay.PAYSID }" class="tablelink">修改</a>
	<a href="mongetpsysture?ps.paysid=${pay.PAYSID }" class="tablelink">确认发放</a>
	</td>
</tr>
</c:forEach>
</table>

 </body>
</html>
