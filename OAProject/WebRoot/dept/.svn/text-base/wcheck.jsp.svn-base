<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'wcheck.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
	a{
		text-decoration: none;
		cursor: pointer;
	}
</style>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".onclick").click(function(){
		$.post("wcheck!check.action",{},function(data){
			var nowtime=data.nowtime;
			var t1="08:00:00";
			var t2="12:00:00";
			var t3="14:00:00";
			var t4="17:00:00";
			var t5="19:00:00";
			var t6="21:00:00";
			if(nowtime<"08:00:00"||nowtime<"09:00:00"){
				if(nowtime>t1){   //第一次签到
					document.getElementById("ft1").value="[迟到]";
					document.getElementById("t1").value=nowtime;
				}else{
					document.getElementById("ft1").value="[签到]";
					document.getElementById("t1").value=nowtime;
				}
				if(document.getElementById("t1").value!=null){
					alert("您已签到！");
				}
			}
			if(nowtime>"09:00:00"&&nowtime<"11:40:00"){
				alert("不在打卡时间内！");
			}
			if(nowtime>"11:40:00"&&nowtime<"12:30:00"){
				if(nowtime>t2){   //第二次签到
					document.getElementById("ft2").value="[早退]";
					document.getElementById("t2").value=nowtime;
				}else{
					document.getElementById("ft2").value="[签到]";
					document.getElementById("t2").value=nowtime;
				}
				if(document.getElementById("t2").value!=null){
					alert("您已签到！");
				}
			}
			if(nowtime>"12:30:00"&&nowtime<"13:40:00"){
				alert("不在打卡时间内！");
			}
			if(nowtime>"13:40:00"&&nowtime<"14:30:00"){
				if(nowtime>t3){   //第三次签到
					document.getElementById("ft3").value="[迟到]";
					document.getElementById("t3").value=nowtime;
				}else{
					document.getElementById("ft3").value="[签到]";
					document.getElementById("t3").value=nowtime;
				}
				if(document.getElementById("t3").value!=null){
					alert("您已签到！");
				}
			}
			if(nowtime>"14:30:00"&&nowtime<"16:40:00"){
				alert("不在打卡时间内！");
			}
			if(nowtime>"16:40:00"&&nowtime<"17:30:00"){
				if(nowtime>t4){   //第四次签到
					document.getElementById("ft4").value="[早退]";
					document.getElementById("t4").value=nowtime;
				}else{
					document.getElementById("ft4").value="[签到]";
					document.getElementById("t4").value=nowtime;
				}
				if(document.getElementById("t4").value!=null){
					alert("您已签到！");
				}
			}
			if(nowtime>"17:30:00"&&nowtime<"18:40:00"){
				alert("不在打卡时间内！");
			}
			if(nowtime>"18:40:00"&&nowtime<"19:30:00"){
				if(nowtime>t5){   //第五次签到
					document.getElementById("ft5").value="[迟到]";
					document.getElementById("t5").value=nowtime;
				}else{
					document.getElementById("ft5").value="[签到]";
					document.getElementById("t5").value=nowtime;
				}
				if(document.getElementById("t5").value!=null){
					alert("您已签到！");
				}
			}
			if(nowtime>"19:30:00"&&nowtime<"20:40:00"){
				alert("不在打卡时间内！");
			}
			
			if(nowtime>"20:40:00"&&nowtime<"21:30"){
				if(nowtime>t6){   //第六次签到
					document.getElementById("ft6").value="[早退]";
					document.getElementById("t6").value=nowtime;
				}else{
					document.getElementById("ft6").value="[签到]";
					document.getElementById("t6").value=nowtime;
				}
				if(document.getElementById("t6").value!=null){
					alert("您已签到！");
				}
			}
			if(nowtime>"21:30:00"){
				alert("不在打卡时间内！");
			}
		},"json")
	});
	});
	
</script>
  </head>
  
  <body>
  	<form action="wcheck!add.action" method="post">
    <table width="50%" align="center" border="1" cellspacing="1" bgcolor="black">
    	<tr bgcolor="white">
    		<td>上班<input type="text" style="border: 0;" readonly="readonly" name="wc.s1" id="ft1"/></td>
    		<td>第一次登记</td>
    		<td>规定时间:<b>08:00:00</b><br>考勤时间:<input type="text" style="border: 0;"  readonly="readonly" name="wc.w1" id="t1"/></td>
    		<td align="center"><a class="onclick">打卡</a></td>
    	</tr>
    	<tr bgcolor="white">
    		<td>下班<input type="text" style="border: 0;" readonly="readonly" name="wc.s2" id="ft2"/></td>
    		<td>第二次登记</td>
    		<td>规定时间:<b>12:00:00</b><br>考勤时间:<input type="text" style="border: 0;"  readonly="readonly" name="wc.w2" id="t2"/></td>
    		<td align="center"><a class="onclick">打卡</a></td>
    	</tr>
    	<tr bgcolor="white">
    		<td>上班<input type="text" style="border: 0;" readonly="readonly" name="wc.s3" id="ft3"/></td>
    		<td>第三次登记</td>
    		<td>规定时间:<b>14:00:00</b><br>考勤时间:<input type="text" style="border: 0;"  readonly="readonly" name="wc.w3" id="t3"/></td>
    		<td align="center"><a class="onclick">打卡</a></td>
    	</tr>
    	<tr bgcolor="white">
    		<td>下班<input type="text" style="border: 0;" readonly="readonly" name="wc.s4" id="ft4"/></td>
    		<td>第四次登记</td>
    		<td>规定时间:<b>17:00:00</b><br>考勤时间:<input type="text" style="border: 0;"  readonly="readonly" name="wc.w4" id="t4"/></td>
    		<td align="center"><a class="onclick">打卡</a></td>
    	</tr>
    	<tr bgcolor="white">
    		<td>加班<input type="text" style="border: 0;" readonly="readonly" name="wc.s5" id="ft5"/></td>
    		<td>第五次登记</td>
    		<td>规定时间:<b>19:00:00</b><br>考勤时间:<input type="text" style="border: 0;"  readonly="readonly" name="wc.w5" id="t5"/></td>
    		<td align="center"><a class="onclick">打卡</a></td>
    	</tr>
    	<tr bgcolor="white">
    		<td>下班<input type="text" style="border: 0;" readonly="readonly" name="wc.s6" id="ft6"/></td>
    		<td>第六次登记</td>
    		<td>规定时间:<b>21:00:00</b><br>考勤时间:<input type="text" style="border: 0;" readonly="readonly" name="wc.w6" id="t6"/></td>
    		<td align="center"><a class="onclick">打卡</a></td>
    	</tr>
    	<tr align="center" bgcolor="white">
	    	<td colspan="4">
	    		<input type="submit" value="添加记录"/>
	    		<a href="wcheck!list.action">记录列表</a>
	    	</td>
    	</tr>
    </table>
    </form>
  </body>
</html>
