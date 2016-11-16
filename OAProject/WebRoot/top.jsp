<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
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
<script language="JavaScript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
	<script>
	$(function(){
		if(${session.userpwd=='123'}){
			if(confirm("系统检测到您的账户密码为初始密码，为了保护您的账户信息，是否修改初始密码？")){
				document.frm.submit();
			}
		}
	});
</script>
	<script>
	<% 
		//由登入的action 中传来的id
		//int  id=((Integer)session2.getAttribute("")).intValue();
		String  name=(String)session.getAttribute("name");
	%>
	function timer(){
		var d=new Date();
		var traget=document.getElementById(show);  
		
		//将内容显示到标签上
		document.getElementById("fnt").innerHTML=d;
		setTimeout("timer()",1000);
		if(d.getHours()>=6&&d.getHours()<12){
			document.getElementById("show").innerHTML="早上好！";
		}
		else if(d.getHours()>=12&&d.getHours()<14){
			document.getElementById("show").innerHTML="中午好！";
		}
		else if(d.getHours()>=14&&d.getHours()<18){
			document.getElementById("show").innerHTML="下午好！";
		}else{
			document.getElementById("show").innerHTML="晚上好！";
		}
	
        }
  </script>


</head>


<body style="background:url(images/topbg.gif) repeat-x;" onload="timer();">

    <div class="topleft">
    <a href="main.jsp" target="_parent"><img src="images/logo.png" title="系统首页" /></a>
    </div>
      
    <ul class="nav">
    <div class="welinfo">
    <span><img src="images/sun.png" alt="天气" /></span>
    <b>${name}:<font id="show"
    ></font>欢迎使用宏图软件办公系统</b>
    <c:if  test="${name!=null  }"> 
	<a  href="stu/updpwd.jsp" target="rightFrame" >修改密码</a>
	 </c:if>
	 
    </div>
    <div class="welinfo">
    <span><img src="images/time.png" salt="时间" /></span>
    <b>现在时间为:<font  id="fnt"></font></b>
    </div>
    </ul>
    <div class="topright">    
    <ul>
    <li><span><img src="images/help.png" title="帮助"  class="helpimg" /></span><a href="bz.jsp" target="rightFrame">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="login.jsp" target="_parent" >退出</a></li>
    </ul>
    <div class="user">
    <tr>
    <span><a href="emp!sel.action" target="rightFrame">${name }</a></span>
    </tr>
    </div>    
    </div>
    <form action="stu/updpwd.jsp" target="rightFrame" name="frm"></form>
</body>
</html>
