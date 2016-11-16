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
		<div class="formbody">

				<div id="usual1" class="usual">


					<div id="tab1" class="tabson">

						<ul class="forminfo">
						
							<li>
								<label>
									通知ID
									<b>*</b>
								</label>
								<input name="msg.msgid" type="text" class="dfinput"
									style="width: 518px;" value="${msg.msgid}" disabled="disabled"/>
							</li>
						
							<li>
								<label>
									通知标题
									<b>*</b>
								</label>
								<input name="msg.msgtitle" type="text" class="dfinput"
									style="width: 518px;" value="${m.msgtitle}" disabled="disabled"/>
							</li>

							<li>
								<label>
									面向对象
									<b>*</b>
								</label>
							
									<div class="cityright">
										<select class="select2" name="msg.msgface" disabled="disabled">
											<option ${m.msgface==0?'selected':''}>
											学生
											</option>
											<option ${m.msgface==1?'selected':''}>
												老师
											</option>
										</select>
										
									</div>
							</li>

							<li>
								<label>
									上传附件
									<b>*</b>
								</label>
									
									 <input name="msg.msgaccessory" type="text" class="dfinput"
									style="width: 518px;" value="${m.msgaccessory}" disabled="disabled"/> 
								
							</li>

							<li>
								<label>
									通知内容
									<b>*</b>
								</label>
								<textarea  id="content7" name="msg.msgcon"  
									style="width: 700px; height: 250px; visibility: hidden;"  disabled="disabled" >${m.msgcon}</textarea>
								
							</li>

<li>
								<label>
									状态
									<b>*</b>
								
								</label>
					
									<div class="cityright">
										<select class="select2" name="msg.msgstatus" disabled="disabled">
											<option  ${m.msgstatus==0?'selected':''} >
												发布
											</option>
											<option   ${m.msgstatus==1?'selected':''}>
												未发布
											</option>
											
										</select>
									</div>

									
							</li>

							<li>
								<label>
									&nbsp;
								</label>
								<a href="msglist.action"><input type="button" class="btn" value="返回" /></a>
								
								<a href="msgdown.action?fname=${m.msgaccessory}"><input type="button" class="btn" value="下载附件" /></a>
							</li>
						</ul>

					</div>
				</div>
	
		<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>

		<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>



	</body>

</html>
