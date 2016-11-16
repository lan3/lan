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
  
		
<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})
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
	<script>
		function loc(){
			location.href="objectimgtoadd";
		}
		function tosel1(){
			var kechenf=document.getElementById("kecheng").value;
			var ename=document.getElementById("ename").value;
			var classname=document.getElementById("classname").value;
			location.href="objectimgtolist?kecheng="+kechenf+"&ename="+ename+"&classname="+classname;
		}
	</script>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="default.jsp">首页</a></li>
    <li><a href="#">课程进度查看</a></li>
    </ul>
    </div>
    <div class="tools">
    
    	<ul class="toolbar">
        </ul>
        
        	<ul class="seachform">
					<li>
						<label>
							课程:
						</label>
						<div class="vocation">
						<select id="kecheng"  class="select3" >
						<option></option>
							<c:forEach items="${lil}" var="s">
								<option value="${s.onjectname }">${s.onjectname }</option>
							</c:forEach>
						</select>
						</div>
					</li>
					<li>
						<label>
							任课老师:
						</label>
						<div class="vocation">
						<select  id="ename"  class="select3" >
						<option></option>
							<c:forEach items="${lii}" var="s">
								<option value="${s.ENAME }">${s.ENAME }</option>
							</c:forEach>
						</select>
						</div>
					</li>	
					<li>
						<label>
							班级名字:
						</label>
						<div class="vocation">
						<select id="classname"  class="select3" >
						<option></option>
							<c:forEach items="${l}" var="s">
								<option value="${s.CLASSNAME }">${s.CLASSNAME }</option>
							</c:forEach>
						</select>
						</div>
					</li>
					<li>
						<label>
							&nbsp;
						</label>
						<input type="button"  onclick="tosel1();" class="btn" value="查询"  />
					</li>
				</ul>
        
    </div>
    <div class="rightinfo">
    
    <ul class="classlist">
    <c:forEach items="${list}" var="s">
    	 <li>
	    <div class="lright">
	    <h2>${s.OBJECTNAME }</h2>
	    <p>
	    	班级:${s.CLASSNAME }<br/>
	    	任课老师:${s.KENAME }<br/>
	    	课程数：共${s.CONTENT }章<br/>
	    	已完成：${s.TOCONTENT==null? '0':s.TOCONTENT }章<br/>
	    	</p>
	    </div>
	    </li>
    
    </c:forEach>
   
    </ul>
   
   </div>
   
     <div class="clear"></div>
    <div class="pagin">
     <div class="message">共<i class="blue">${totalpage }</i>条记录，当前显示第&nbsp;<i class="blue">${currpage }&nbsp;</i>页</div>
    <div class="pagin">
    	<ul class="paginList">
        <li class="paginItem"><a href="objectimgtolist?currpage=${currpage-1 }&kecheng=${kecheng }&ename=${ename }&classname=${classname }"><span class="pagepre"></span></a></li>
		<c:forEach begin="1" end="${totalrow}" var="s">
			<li ${s==currpage ? 'class="paginItem current"':'class="paginItem"' }><a href="objectimgtolist?currpage=${s }&kecheng=${kecheng }&ename=${ename }&classname=${classname }">${s}</a></li>
		</c:forEach>
        
        <li class="paginItem"><a href="objectimgtolist?currpage=${currpage+1 }&kecheng=${kecheng }&ename=${ename }&classname=${classname }"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
</body>

</html>
