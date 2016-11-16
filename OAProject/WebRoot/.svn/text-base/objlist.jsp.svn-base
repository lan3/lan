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
					<a href="score!list.action">成绩管理</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">

			<div class="tools">
				<ul class="seachform">
				<form action="score!stufind.action" method="post">	
				<li>
					<label>
							班级查询:
					</label>
					<div class="vocation">
					  <select  class="select3" id="class" name="classid" >
					  		<option>--选择班级--</option>	
							<c:forEach items="${listclass}" var="class">
								<option value="${class.classname }">${class.classname }</option>
							</c:forEach>
						</select>
					 </div>
					</li>
					<li>
		
						<input type="submit" class="btn" value="查询"  />
					</li>
					</form>
					<form action="score!object.action" method="post">
					<li>
					<label>
							科目查询:
					</label>
					<div class="vocation">
					  <select onchange="tosel2();" class="select3" name="onjectname" >
							<option>--选择科目--</option>
							<c:forEach items="${listobj}" var="obj">
    							<option value="${obj.onjectname  }">${obj.onjectname  } </option>
    						</c:forEach>
						</select>
					 </div>
					</li>
					<li>
		
						<input type="submit"  class="btn" value="查询"  />
					</li>
				</form>	
				</ul>											
			</div>
			
			
			<table class="tablelist">
				<thead>
					<tr>
						<th>
							编号
						</th>
						<th>
							学生姓名
						</th>
						<th>
							所在班级
						</th>
						<th>
							考试科目
						</th>
						<th>
							成绩
						</th>	
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${objlist}" var="score">
						<tr>
							<td>
								${score.SCOID }
							</td>
							<td>
								${score.SID }
							</td>
							<td>
								${score.CLASSID }
							</td>
							<td>
								${score.ONJECTNAME }
							</td>
							<td>
								${score.SCORE }
							</td>
							<td>
								<a href="" class="tablelink">修改</a>
								<a onclick="return confirm('确认要删除吗？')"
									href="score!delscore.action?sc.scoid=${score.SCOID }"  class="tablelink">
									删除</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="pagin">
				<div class="message">
					共
					<i class="blue">${totalRow }</i>条记录，当前显示第&nbsp;
					<i class="blue">${currpage }&nbsp;/${totalpage }</i>页
				</div>
				<ul class="paginList">
					<li class="paginItem">
						<a href="say!list.action?currpage=${currpage-1 }"><span
							class="pagepre"></span> </a>
					</li>
					<c:forEach begin="1" end="${totalpage}" var="stu">
						<li class="paginItem">
							<a href="say!list.action?currpage=${stu }">${stu}</a>
						</li>
					</c:forEach>
					<li class="paginItem">
						<a href="say!list.action?currpage=${currpage+1 }"><span
							class="pagenxt"></span> </a>
					</li>
				</ul>
			</div>


		<script type="text/javascript">
			$('.tablelist tbody tr:odd').addClass('odd');
			function toadd(){
				location.href="score!listID.action"; 
			}
		
	</script>

	</body>

</html>
