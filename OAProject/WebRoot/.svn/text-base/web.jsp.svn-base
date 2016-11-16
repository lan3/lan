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
		<script type="text/javascript" src="js/jquery.js"></script>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<link href="css/select.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
		<script type="text/javascript" src="js/select-ui.min.js"></script>
		<script type="text/javascript" src="editor/kindeditor.js"></script>
		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>

<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>


<script type="text/javascript">
  	  	KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
</script>
  
<script type="text/javascript">
		$(document).ready(function(){
		
		 $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
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
		$(".del").click(function(){  //点击删除事件
			del();
		});
		$(".save").click(function(){  //点击保存事件
			location.href="report!test.action?element="+getdata();
		});
		});
		
    //创建全选反选函数
    function xuan(type){
        //获取name值
        var qcheck=document.getElementsByName("check[]");
        //获取选的按钮
        if(type=="qx"){
            for(var i=0;i<=qcheck.length;i++){
            if(qcheck[i].checked){
            	qcheck[i].checked=false;
            }else{
           		qcheck[i].checked=true;
            }
                
            }
       	 }
      }
         function del(){
	         //获取name值
	        var qcheck=document.getElementsByName("check[]");
	        //获取选的按钮 
	        var  datas="";
	        for(var i=0;i<=qcheck.length-1;i++){
	            if(qcheck[i].checked==true){
	            	var data=qcheck[i].value;
	            	datas+=data+",";
	            }
	       	}
	       	if(datas==""){
	       	 	alert("请至少勾选一个删除项！");
	       	 	return ;
	       	}else{
	       		location.href="report!dels.action?dids="+datas;
	       	}
       	
         }
         function tosel1(){
         	var t1= document.getElementById("d11").value;
         	var t2= document.getElementById("d12").value;
         	location.href="report!seldata1?t1="+t1+"&t2="+t2;
         }
         function tosel2(){
         	var name=document.getElementById("empename").value;
         	location.href="report!seldata2?name="+name;
         }
         function seldata3(){
         	location.href="report!seldata3.action";
         }
</script>
	

<script type="text/javascript">
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
					<a href="right.jsp">学生总结</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">

			<div class="tools">
				<ul class="seachform">
					<c:forEach items="${web}" var="web">
						<li>
							<label>
								班级：${web.CLASSID } 
							</label>
						</li>
						<li style="margin-left: 60px;">
							<label>
								项目名称：${web.ONJECTNAME }
							</label>
						</li>
						<li style="margin-left: 60px;">
							<label>
								指导老师：${web.EMPTEACH }
							</label>
						</li>
						<li style="margin-left: 60px;">
							<label>
								演示时间：${web.TIME }
							</label>
						</li>
						<li style="margin-left: 60px;">
							<label>
								评委老师：${web.PIN }
							</label>
						</li>
					</c:forEach>
				</ul>
			</div>

			<form action="web!addstu.action" method="post" name="tfrm">
			<table class="tablelist">
				<thead>
					<tr>
						<th>
							学生姓名
						</th>
						<th>
							功能完善
						</th>
						<th>
							技术难度
						</th>
						<th>
							界面美观
						</th>
						<th>
							演示方法
						</th>
						<th>
							语言表达
						</th>
						<th>
							回答问题
						</th>
						<th>
							总分
						</th>
						<th>
							备注
						</th>
					</tr>
				</thead>
				<tbody>
					
				<c:forEach items="${clstu}" var="stu">
						<tr>
							<td>
								${stu.SNAME }
   								<input type="hidden" name="t1" value="${stu.SNAME }"/>
							</td>
							<td>
								<li style="margin-top: 10px;">
									<div class="vocation">
										<select name="s1" class="select3" onchange="javascript:doit(this.form);">
		   									<c:forEach begin="0" end="50" var="v">
		   										<option value="${v}">${v}</option>
		   									</c:forEach>
		   								</select>
	   								</div>
	   							</li>	
							</td>
							<td>
								<li style="margin-top: 10px;">
									<div class="vocation">
										<select name="s2" class="select3" onchange="javascript:doit(this.form);">
					   						<c:forEach begin="0" end="10" var="v">
					   							<option value="${v}">${v}</option>
					   						</c:forEach>
   										</select>
   									</div>
   								</li>			
							</td>
							<td>
								<li style="margin-top: 10px;">
									<div class="vocation">
										<select name="s3" class="select3" onchange="javascript:doit(this.form);">
					   						<c:forEach begin="0" end="10" var="v">
					   							<option value="${v}">${v}</option>
					   						</c:forEach>
   										</select>
   									</div>	
   								</li>		
							</td>
							<td>
								<li style="margin-top: 10px;">
									<div class="vocation">
										<select name="s4" class="select3" onchange="javascript:doit(this.form);">
					   						<c:forEach begin="0" end="10" var="v">
					   							<option value="${v}">${v}</option>
					   						</c:forEach>
   										</select>
   									</div>	
   								</li>		
							</td>
							<td>
								<li style="margin-top: 10px;">
									<div class="vocation">
										<select name="s5" class="select3" onchange="javascript:doit(this.form);">
					   						<c:forEach begin="0" end="10" var="v">
					   							<option value="${v}">${v}</option>
					   						</c:forEach>	
   										</select>
   									</div>	
   								</li>		
							</td>
							<td>
								<li style="margin-top: 10px;">
									<div class="vocation">
										<select name="s6" class="select3" onchange="javascript:doit(this.form);">
					   						<c:forEach begin="0" end="10" var="v">
					   							<option value="${v}">${v}</option>
					   						</c:forEach>
   										</select>
   									</div>	
   								</li>		
							</td>
							<td>
								<li>
									<div class="vocation">
										<input type="text" name="t8"  onchange="tosel2();"class="scinput" style="width: 60px;"/>
									</div>
								</li>
							</td>
							<td>
								<li>
									<div  class="vocation">
										<input type="text" name="t9"   onchange="tosel2();"class="scinput"/>	
									</div>
								</li>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
				<li>
					<div  class="vocation">
						<input type="submit" class="btn" value="添加"  />
					</div>
				</li>			
			</form>
		<script type="text/javascript">
		function doit(ofrm){
   				ofrm.t8.value=parseInt(ofrm.s1.value)+parseInt(ofrm.s2.value)+parseInt(ofrm.s3.value)+parseInt(ofrm.s4.value)+parseInt(ofrm.s5.value)+parseInt(ofrm.s6.value);
			}
			
	</script>

	</body>

</html>
