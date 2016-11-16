<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/select-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/editor/kindeditor.js"></script>
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
    
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="default.jsp">首页</a></li>
    <li><a href="#">添加意向学生</a></li>
    </ul>
    </div>
    <div class="formbody">
    <div id="usual1" class="usual"> 
    <div class="itab">
  	<ul> 
    <li><a href="#" class="selected">添加意向学生</a></li> 
  	</ul>
    </div> 
  	<div id="tab1" class="tabson">
  	<form  id="reg-form" action="inten!addinten.action" onsubmit="return yanzheng();" method="post"  id="fm">
			<ul class="forminfo" >
					<li style="padding-left: 50px;">
						<label style="width: 60px;">
						学生姓名:
					</label><input type="text"   style="width: 200px" name="inte.intenname" 
						class="dfinput"   id="sname"/><font id="ft1"  color="red"></font>
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						学生性别:
					</label>
					<label >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio"   value="男" name="inte.intensex" checked="checked"  />男</label>
					<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" value="女" name="inte.intensex" />女</label>
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						学生年龄:
					</label>
					<input type="text"   style="width: 200px" name="inte.intenage"
						class="dfinput"   id="age"/><font id="ft2"></font>
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						出生日期:
					</label>
					<input type="text"   style="width: 200px" name="inte.intenbir"
						class="dfinput" id="date"/><font id="ft3"></font>
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						就读高中:
					</label>
					<input type="text"     style="width: 200px" name="inte.intensch"
						class="dfinput"   id="school"/><font id="ft4"></font>
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
							联系QQ:
					</label>
					<input type="text" style="width: 200px"   name="inte.intenqq"
						class="dfinput" id="qq"/><font id="ft5"></font>
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						联系电话:
					</label>
					<input type="text" style="width: 200px"   name="inte.intentel"
						class="dfinput" id="tel"/><font id="ft6"></font>
				</li>
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						家庭住址:
					</label>
					<input type="text" style="width: 200px"      name="inte.intenaddr"
						class="dfinput"  id="addr" /><font id="ft7"></font>
				</li>
				<li style="padding-left: 50px;">
					<label  style="width: 60px;">
						推荐老师:
					</label>
					<div class="vocation">
					<select  name="inte.enames"  id="teacher"  class="select3"  >
						<c:forEach items="${list}" var="e">
							<option value="${e.ENAME}">${e.ENAME}</option>
						</c:forEach>
					</select>
					</div>
				</li>
				
				<li style="padding-left: 50px;">
					<label style="width: 60px;">
						登记时间:
					</label>
					<input type="text" style="width: 200px"  id="adate" name="inte.intendate"
					   readonly="readonly" class="Wdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})"
					  id="dates" /><font id="ft8"></font>
				</li>
				<li style="padding-left: 100px; color: white;">
					<label> 
						<input type="submit" class="scbtn"  style="padding-left: 0px;" value="提交"  />
					</label>
					&nbsp;&nbsp;&nbsp;&nbsp;
					<label>
						<input type="reset" class="scbtn"  style="padding-left: 0px;" value="取消"  />
						</label>
				</li>
			</ul>
		</form>
		</div>
		</div>
		</div>
</body>
	<script>
		function yanzheng(){
		if($("#sname").val()==""){
			alert("请输入学生姓名");
			return false;
		}		
		
			if($("#age").val()==""){
			alert("请输入学生年龄");
			return false;
		}		
			if($("#age").val()>100||$("#age").val()<1){
			alert("学生年龄输入错误");
			return false;
		}		
		
		if($("#date").val()==""){
			alert("请输入学生出生日期");
			return false;
		}
				
		if($("#date").val()==""){
			alert("请输入学生出生日期");
			return false;
		}
		if($("#school").val()==""){
			alert("请输入学生毕业学校");
			return false;
		}
		if($("#qq").val()==""){
			alert("请输入学生联系qq");
			return false;
		}
		if($("#tel").val()==""){
			alert("请输入学生联系电话");
			return false;
		}
		if($("#addr").val()==""){
			alert("请输入学生联系地址");
			return false;
		}
		if($("#dates").val()==""){
			alert("请输入登记时间");
			return false;
		}
		
		
}
	</script>
</html>

