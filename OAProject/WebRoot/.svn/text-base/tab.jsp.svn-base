<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<form id="reg-form" action="msgadd.action" method="post" enctype="multipart/form-data" name="frm" onsubmit="return yz(this)";>
			<div class="place">
				<span>位置：</span>
				<ul class="placeul">
					<li>
						<a href="default.jsp">首页</a>
					</li>
					<li>
						<a href="#">发布通知</a>
					</li>
				</ul>
			</div>

			<div class="formbody">


				<div id="usual1" class="usual">

					<div class="itab">
						<ul>
							<li>
								<a href="#tab1" class="selected">发布通知</a>
							</li>
							
						</ul>
					</div>

					<div id="tab1" class="tabson">

						

						<ul class="forminfo">
							<li>
								<label>
									通知标题
									<b>*</b>
								</label>
								<input name="msg.msgtitle" type="text" class="dfinput"
									style="width: 518px;" id="tit" />
									
									
							</li>


							<li>
								<label>
									面向对象
									<b>*</b>
								</label>
								<div class="usercity">

									<div class="cityright">
										<select class="select2" name="msg.msgface" >
											<option value="0">
												学生
											</option>
											<option value="1">
												老师
											</option>
										</select>
									</div>

								</div>

							</li>

							<li>
								<label>
									上传附件
									<b>*</b>
								</label>
							  <input name="msgaccessory" type="file" id="f"/>
								
							</li>

							<li>
								<label>
									通知内容
									<b>*</b>
								</label>
								<textarea id="content7" name="msg.msgcon"
									style="width: 700px; height: 250px; visibility: hidden;"></textarea>
							</li>
							
							<li>
								<label>
									状态
									<b>*</b>
								</label>
								<div class="usercity">
									<div class="cityright">
										<select class="select2" name="msg.msgstatus" >
											<option value="0">
												发布
											</option>
											<option value="1">
												未发布
											</option>
										</select>
									</div>
								</div>

							</li>

							<li>
								<label>
									&nbsp;
								</label>
								<input type="submit" class="btn" value="提交" />
								
							</li>
						</ul>

					</div>
				</div>
		</form>

		<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>

		<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
	<script >
		function yz(form){
		if($("#tit").val()==""){
			alert("请输入标题");
			return false;
		}else if($("#f").val()==""){
			alert("没有附件");
			
			return false;
		
		}
		
		}
	</script>
	

	</body>

</html>
