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
					<a href="#">研讨会详情</a>
				</li>
			</ul>
		</div>
		<div class="formbody">
			<div id="tab1" class="tabson">
					<ul class="forminfo">
						<li>
							<label>
								主持人：
							</label>
							<div class="vocation">
								<select name="tra.tname" class="select1">
										<option>
											${tra.tname }
										</option>
								</select>
							</div>
						</li>
						<li>
							<label>
								时间：
							</label>
							<input type="text" name="tra.tdata" class="dfinput"
								value="${tra.tdata }" onClick="WdatePicker()" />
						</li>
						<li>
							<label>
								地点：
							</label>
							<input type="text" name="tra.tloc" 	value="${tra.tloc }" class="dfinput" />
						</li>
						<li>
							<label>
								记录人：
							</label>
							<div class="vocation">
								<select name="tra.tnoter" class="select1" >
										<option>
											${tra.tnoter }
								</select>
							</div>
						</li>
						<li>
							<label>
								内容主题：
							</label>
							<input type="text" size="109" class="dfinput" name="tra.theam" value="${tra.theam }" />
						</li>
						<li>
							<label>
								到场人：
							</label>
							<input type="text" readonly="readonly" size="90"  name="tra.tename"  class="dfinput" value="${tra.tename }" id="tname" />
						</li>

						<li>
							<label>
								内容记录：
							</label>
							
							<textarea rows="10" id="content7" cols="104" name="tra.tcon" >${tra.tcon }</textarea>
						</li>
						<li>
							<label>
								对本次科研有何建议：
							</label>
							<textarea rows="10" id="content6" cols="104" name="tra.tsug" >${tra.tsug }</textarea>
						</li>
					</ul>
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
    </script>
	</body>

</html>
