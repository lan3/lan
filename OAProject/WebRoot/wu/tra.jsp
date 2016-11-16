<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
     KE.show({
        id : 'content6',
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
				<li>
					<a href="default.jsp">首页</a>
				</li>
				<li>
					<a href="#">研讨会记录添加</a>
				</li>
			</ul>
		</div>
		<div class="formbody">
			<div id="tab1" class="tabson">
				<form action="traadd" method="post" onsubmit="return y()">
					<ul class="forminfo">
						<li>
							<label>
								主持人：
							</label>
							<div class="vocation">
								<select name="tra.tname" class="select1">
									<c:forEach items="${list}" var="s">
										<option value="${s.ENAME }">
											${s.ENAME }
										</option>
									</c:forEach>
								</select>
							</div>
						</li>
						<li>
							<label>
								时间：
							</label>
							<input type="text" name="tra.tdata" id="data" class="dfinput" onClick="WdatePicker()" />
						</li>
						<li>
							<label>
								地点：
							</label>
							<input type="text" id="loc" name="tra.tloc" class="dfinput" />
						</li>
						<li>
							<label>
								记录人：
							</label>
							<div class="vocation">
								<select name="tra.tnoter" class="select1">
									<c:forEach items="${list}" var="s">
										<option value="${s.ENAME }">
											${s.ENAME }
										</option>
									</c:forEach>
								</select>
							</div>
						</li>
						<li>
							<label>
								内容主题：
							</label>
							<input type="text" size="109" id="theam" class="dfinput" name="tra.theam" />
						</li>
						<li>
							<label>
								到场人：
							</label>
							<div class="vocation">
								<label>
								<input type="text" id="tname" size="90" readonly="readonly"  name="tra.tename"  class="dfinput" id="tname"  />
								</label>
								<div class="vocation" style="padding-left: 260px;">
									<select onchange="nameadd(this.value)" class="select2">
										<option>
											-点击选择-
										</option>
										<c:forEach items="${list}" var="s">
											<option value="${s.ENAME }">
												${s.ENAME }
											</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</li>

						<li>
							<label>
								内容记录：
							</label>
							
							<textarea rows="10" id="content7" cols="104" name="tra.tcon"></textarea>
						</li>
						<li>
							<label>
								对本次科研有何建议：
							</label>
							<textarea rows="10" id="content6" cols="104" name="tra.tsug" ></textarea>
						</li>
						<li>
								<input type="submit" class="btn" value="添加" />
						</li>
					</ul>
				</form>
			</div>
		
			<script type="text/javascript">
    	function nameadd(name){
    	  var tname;
    	if($("#tname").val()==""){
    		tname=name;
    	}else{
    		tname=$("#tname").val()+","+name;
    	}
    		$("#tname").val(tname);
    	}
    	function y(){
    		var data=document.getElementById("data").value;
	    	if(data==null||data==""){
	    	alert("时间为空了！");
	    	return false;
	    	} 
    		var loc=document.getElementById("loc").value;
	    	if(loc==null||loc==""){
	    	alert("没填写地址呢！");
	    	return false;
	    	}
	    	var theam=document.getElementById("theam").value;
	    	if(theam==null||theam==""){
	    		alert("主题都忘写了哟！");
	    		return false;
	    	}
	    	var tname=document.getElementById("tname").value;
	    	if(tname==null||tname==""){
	    		alert("一个记录人都没有哦");
	    		return false;
	    	}
	    	var content7=document.getElementById("content7").value;
	    	if(content7==null||content7==""){
	    		alert("内容记录总得有吧！");
	    		return false;
	    	}
    	}
    </script>
	</body>

</html>
