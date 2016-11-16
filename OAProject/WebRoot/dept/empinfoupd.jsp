<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'empinfo.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
		<link rel="stylesheet" type="text/css" href="styles.css">
		-->
		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>	
		<script type="text/javascript">
		function upload(){
			$("#file").trigger("click");//触发file的点击事件
			
		}
		String.prototype.Right=function(i){
			return this.slice(this.length-i,this.length);
		};
		function getfilepath(){
			$('#imgs')[0].src="img/"+$("#file").attr("value").Right(6);
		}
	</script>
	</head>
		<style type="text/css"> 
/* CSS Document */ 

body { 
font: normal 11px auto "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
color: #4f6b72; 
background: #E6EAE9; 
} 

a { 
color: #c75f3e; 
} 

#mytable { 
width: 700px; 
padding: 0; 
margin: 0; 
} 

caption { 
padding: 0 0 5px 0; 
width: 700px; 
font: italic 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
text-align: right; 
} 

th { 
font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
color: #4f6b72; 
border-right: 1px solid #C1DAD7; 
border-bottom: 1px solid #C1DAD7; 
border-top: 1px solid #C1DAD7; 
letter-spacing: 2px; 
text-transform: uppercase; 
text-align: left; 
padding: 6px 6px 6px 12px; 
background: #CAE8EA  no-repeat; 
} 
/*power by www.winshell.cn*/ 
th.nobg { 
border-top: 0; 
border-left: 0; 
border-right: 1px solid #C1DAD7; 
background: none; 
} 

td { 
border-right: 1px solid #C1DAD7; 
border-bottom: 1px solid #C1DAD7; 
background: #fff; 
font-size:11px; 
padding: 6px 6px 6px 12px; 
color: #4f6b72; 
} 
/*power by www.winshell.cn*/ 

td.alt { 
background: #F5FAFA; 
color: #797268; 
} 

th.spec { 
border-left: 1px solid #C1DAD7; 
border-top: 0; 
background: #fff no-repeat; 
font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
} 

th.specalt { 
border-left: 1px solid #C1DAD7; 
border-top: 0; 
background: #f5fafa no-repeat; 
font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
color: #797268; 
} 
/*---------for IE 5.x bug*/ 
html>body td{ font-size:11px;} 
body,td,th { 
font-family: 宋体, Arial; 
font-size: 12px; 
} 
</style> 
	<body>
	
	<br/>
	<form action="emp!update.action" method="post" enctype="multipart/form-data">
	<input type="file" id="file" name="file" onchange="getfilepath();" 
		style="filter:alpha(opacity=0);opacity:0;width:0;height:0"/>
	<table align="center">
		<tr>
			<td colspan="5" align="left">
				基本信息
			</td>
			<td rowspan="6">
				<img id="imgs" src="img/${emp.eimg }" style="cursor: pointer;"  onclick="upload();" width="152px" height="160px">
			</td>
		</tr>
		<tr>
			<td>
				姓名
			</td>
			<td colspan="2">
				<input type="hidden" name="emp.eimg" value="${emp.eimg }" />
				<input type="hidden" name="emp.eid" value="${emp.eid }"/>
				<input type="text" name="emp.ename" value="${emp.ename }" size="46">
			</td>
			<td>
				性别
			</td>
			<td>
				<input type="text" name="emp.sex" value="${emp.sex }">
			</td>
		</tr>
		<tr >
			<td>
				联系电话
			</td>
			<td colspan="2">
				<input type="text"  name="emp.etel" value="${emp.etel }" size="46">
			</td>
			<td>
				籍贯
			</td>
			<td>
				<input type="text" name="emp.city" value="${emp.city }">
			</td>
		</tr>
		<tr>
			<td>
				家庭住址
			</td>
			<td colspan="2">
				<input type="text" name="emp.eaddr" value="${emp.eaddr }" size="46">
			</td>
			<td>
				薪资标准
			</td>
			<td>
				<input type="text" name="emp.paynorm" value="${emp.paynorm }">
			</td>
		</tr>
		<tr >
			<td >
				毕业院校
			</td>
			<td colspan="2">
				<input type="text" name="emp.eschool" value="${emp.eschool }" size="46">
			</td>
			<td>
				专业
			</td>
			<td>
				<input type="text" name="emp.emajor" value="${emp.emajor }">
			</td>
		</tr>
		<tr >
			<td>
				身份证号
			</td>
			<td colspan="2">
				<input type="text" name="emp.certid" size="46" value="${emp.certid }">
			</td>
			<td >
				婚姻状况
			</td>
			<td>
				<input type="text" name="emp.emarry" value="${emp.emarry }">
			</td>
		</tr>
		<tr>
			<td >
				QQ
			</td>
			<td colspan="2">
				<input type="text" name="emp.eqq" size="46" value="${emp.eqq }">
			</td>
			<td >
				入职日期
			</td>
			<td colspan="2">
			<input type="text" id="d11"  onclick="WdatePicker()"  class="Wdate"
				readonly="readonly"	value="${emp.etry }"  name="emp.etry" />
			</td>
		</tr>
		<tr >
			<td >
				入职部门
			</td>
			<td colspan="2">
				<select name="emp.deptid">
					<c:forEach items="${list}" var="dept">
						<option  ${emp.deptid==dept.DNAME? 'selected':''}>${dept.DNAME }</option>
					</c:forEach>
				</select>
			</td>
			<td >
				职位
			</td>
			<td colspan="2">
				<select name="emp.ejob">
					<option value="董事长" ${emp.ejob=='董事长'?'selected':''}>董事长</option>
					<option value="总监"  ${emp.ejob=='总监'?'selected':''}>总监</option>
					<option value="副校长"  ${emp.ejob=='副校长'?'selected':''}>副校长</option>
					<option value="教学部主任"  ${emp.ejob=='教学部主任'?'selected':''}>教学部主任</option>
					<option value="辅导老师"  ${emp.ejob=='辅导老师'?'selected':''}>辅导老师</option>
					<option value="任课老师"  ${emp.ejob=='任课老师'?'selected':''}>任课老师</option>
					<option value="高级讲师"  ${emp.ejob=='高级讲师'?'selected':''}>高级讲师</option>
					<option value="讲师"  ${emp.ejob=='讲师'?'selected':''}>讲师</option>
					<option value="学工处主任"  ${emp.ejob=='学工处主任'?'selected':''}>学工处主任</option>
					<option value="班主任"  ${emp.ejob=='班主任'?'selected':''}>班主任</option>
					<option value="招生处主任"  ${emp.ejob=='招生处主任'?'selected':''}>招生处主任</option>
					<option value="招生老师"  ${emp.ejob=='招生老师'?'selected':''}>招生老师</option>
					<option value="后勤部主任"  ${emp.ejob=='后勤部主任'?'selected':''}>后勤部主任</option>
				</select>
			</td>
		</tr>
		<tr >
			<td>
				性格与爱好
			</td>
			<td colspan="5">
				<textarea rows="5" name="emp.elove" cols="110">${emp.elove }</textarea>
			</td>
		</tr>
		<tr >
			<td >
				专业与特长
			</td>
			<td colspan="5">
				<textarea rows="5" name="emp.etec" cols="110">${emp.etec }</textarea>
			</td>
		</tr>
		<tr >
			<td colspan="6">
				工作经历
			</td>
		</tr>
		<tr>
			<td  colspan="2">
				单位
			</td>
			<td >
				职务
			</td>
			<td  colspan="2">
				离职原因
			</td>
			<td >
				原单位待遇
			</td>
		</tr>
		<c:if test="${jsize!=0}">
			<c:forEach  items="${jlist}" var="job">
		<tr>
			<td colspan="2">
				<input type="hidden" name="jobs.jid" value="${job.JID }">
				<input type="text" name="jobs.jcompany" size="47" value="${job.JCOMPANY }">
			</td>
			<td>
				<input type="text" name="jobs.jwork" size="20" value="${job.JWORK }" >
			</td>
			<td colspan="2">
				<input type="text" name="jobs.jreason" size="47" value="${job.JREASON }">
			</td>
			<td>
				<input type="text" name="jobs.jmoney"  size="20" value="${job.JMONEY }">
			</td>
		</tr>
		</c:forEach>
		</c:if>
		
		<c:if test="${jsize==0}">
			<c:forEach  begin="1" end="3">
		<tr>
			<td colspan="2">
				<input type="hidden" name="jobs.jid" >
				<input type="text" name="jobs.jcompany" size="47" >
			</td>
			<td>
				<input type="text" name="jobs.jwork" size="20"  >
			</td>
			<td colspan="2">
				<input type="text" name="jobs.jreason" size="47">
			</td>
			<td>
				<input type="text" name="jobs.jmoney"  size="20" >
			</td>
		</tr>
		</c:forEach>
		</c:if>
		
		<tr>
			<td colspan="6">
				紧急联系人(家庭成员)
			</td>
		</tr>
		<tr>
			<td >
				姓名
			</td>
			<td >
				与本人关系
			</td>
			<td >
				工作单位
			</td>
			<td >
				职务
			</td>
			<td >
				联系电话
			</td>
			<td >
				备注
			</td>
		</tr>
		<c:if test="${fsize!=0}">
			<c:forEach items="${flist}"  var="family">
			<tr>
			<td>
				<input type="hidden" name="family.fid" value="${family.FID }">
				<input type="text" name="family.fname" value="${family.FNAME }">
			</td>
			<td>
				<input type="text" name="family.frelation" value="${family.FRELATION }">
			</td>
			<td>
				<input type="text" name="family.fcompany" value="${family.FCOMPANY }">
			</td>
			<td>
				<input type="text" name="family.fjob" value="${family.FJOB }">
			</td>
				<td>
				<input type="text" name="family.ftel" value="${family.FTEL }">
			</td>
			<td>
				<input type="text" name="family.fbeizhu" value="${family.FBEIZHU }">
			</td>
		</tr>
		</c:forEach>
		
		</c:if>
		<c:if test="${fsize==0}">
			<c:forEach begin="1" end="3">
			<tr>
			<td>
				<input type="hidden" name="family.fid" >
				<input type="text" name="family.fname" >
			</td>
			<td>
				<input type="text" name="family.frelation">
			</td>
			<td>
				<input type="text" name="family.fcompany" >
			</td>
			<td>
				<input type="text" name="family.fjob">
			</td>
				<td>
				<input type="text" name="family.ftel" >
			</td>
			<td>
				<input type="text" name="family.fbeizhu">
			</td>
		</tr>
		</c:forEach>
		
		</c:if>
		
		<tr align="center">
			<td colspan="6">
				<input type="submit" value="修改"/>
			</td>
		</tr>
		
	</table>
		</form>
	</body>
</html>
