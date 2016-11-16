<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
		
		<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
		  <script src="layer/layer.js"></script>
		<script language="javascript">
$(function(){	
	//导航切换
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
	
})	
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
					<a href="#">课程管理</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">

			<div class="tools">

				<ul class="toolbar">
					<li class="click"  onclick="add()">
						<span ><img src="images/t01.png"/>
						</span>添加课程
					</li>
					
				</ul>
			</div>
			 <ul class="classlist">
    		</ul>
		</div>
    
    
	<script>
		 var index = layer.load(0, {shade: false});
		
		$.post("edulist",{},function(data){
		var list=data.list;
			$.each(list,function(index,object){
				var li=$("<li>");
				var span=$("<span>");
				var div=$("<div>",{
					"class":"lright"
				});
		
				var h2=$("<h2>",{
					"text":object.onjectname
				});
				div.append(h2);
				var a1=$("<a>",{
					"class":"enter",
					"text":"修改",
				});
				var a2=$("<a>",{
					"class":"enter",
					"text":"删除",
					"href":"edudetele?obj.objectid="+object.objectid,
					
				});
				a1.click(function(){
					var oname=prompt("请输入课程名","");
					if(oname==""||oname==null){
						    layer.msg('课程名不能为空！', {icon: 0});
					}else{
					 	location.href="eduupdate?obj.objectid="+object.objectid+"&obj.onjectname="+oname;
					}
				});
				div.append(a1);
				div.append(a2);
				li.append(span);
				li.append(div);
				$(".classlist").append(li);
				
		});
			 layer.closeAll('loading');
		},"json");
	</script>
	<script>
		function add(){
			var oname=prompt("请输入课程名","");
			if(oname==""||oname==null){
				    layer.msg('课程名不能为空！', {icon: 0});
			}else{
					location.href="eduadd?obj.onjectname="+oname;
			}
		}
	</script>
	</body>

</html>
