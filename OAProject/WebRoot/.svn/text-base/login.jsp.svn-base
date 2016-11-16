<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>


<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 
<script language="javascript">
</script>
</head>

<body onkeyup="mover1();" style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录宏图软件办公系统界面平台</span>    
    <ul>
   
    <li><a href="main.jsp">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
    <div class="loginbox">
    <ul>
    <li><input  id="esname" type="text" class="loginuser"  style="width: 250px;"  value="${uname}" />
    </li>
    <li><input  id="epwd" type="password" class="loginpwd"   style="width: 250px;" /></li>
    <li><input  type="submit" id="Btn_login" class="loginbtn" value="登录"  onclick="mover() " />
    <label><select  style="padding-left: 5px;width: 60px;height:28px;"  id="sel">
   							<option  style="width:25px;font-size: 	;"  value="1" >老师</option>
   							<option  style="width:25px;font-size:   ;"  value="2" >学生</option>
   					</select>		
   			 </label>
   			 <label style="color: blue;font-size: large">${stutas}</label>
  </li>
    </ul>
    </div>
    </div>
    <div class="loginbm">版权所有  2016  <a href="http://www.mycodes.net"></a> </div>
	
    <script>
    	function mover1(){
	    	$("body").keydown(function(e){    //回车登录
        	var curKey = e.which;  
        	if(curKey == 13){  
               $("#Btn_login").click();  
       	 	}  
    	});
    	} 
    	function mover(){  //点击登录
    	var a=document.getElementById("sel").value;
    	var esname=document.getElementById("esname").value;
    		var epwd=document.getElementById("epwd").value;
    		if(a==1){
    			location.href="login!checkemp.action?name="+esname+"&pwd="+epwd;
    		}else if(a==2){
    			location.href="login!checkstu.action?name="+esname+"&pwd="+epwd;
    		}
    	}
    </script>
</body>
</html>
