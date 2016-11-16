
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <li><a href="#">首页</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    
    <form action="class!update.action" method="post">
    <ul class="forminfo">
      <input type="hidden" name="c.classid" value="${cc.classid }"/>
    <li><label>班级名称：</label>
    	
    	<div class="vocation">
    	<input type="text" name="c.classname" value="${cc.classname }" class="dfinput" /><i></i>
    	</div>
    </li>
    <li><label>任课老师： </label>
    	<div class="vocation">
    	<select name="c.empteach" class="select3">
    				<c:forEach items="${emp}" var="e">
	    				<option ${cc.empteach==e.ENAME? 'selected':''}>${e.ENAME }</option>
    				</c:forEach>
    			</select>
    	</div>		
    </li>			
    <li><label>辅导老师</label>
    	<div class="vocation">
    		<select name="c.eid" class="select3">
    			<c:forEach items="${emp}" var="e">
	    			<option ${cc.eid==e.ENAME? 'selected':''}>${e.ENAME }</option>
    			</c:forEach>
    		</select>
    	</div>	
	</li>
    <li><label>班主任</label>
    	<div class="vocation">
    	<select name="c.empteaches" class="select3">
	    	<c:forEach items="${emp}" var="e">
	    		<option ${cc.empteaches==e.ENAME? 'selected':''}>${e.ENAME }</option>
    		</c:forEach>
	    </select>
	    </div>
	 </li>  
    <li><label>班级地址</label>
    	<div class="vocation">
    	<input type="text" name="c.classaddr" value="${cc.classaddr}" class="dfinput" /><i></i>
    	</div>
    	</li>
    <li><label>&nbsp;</label>
    	<input  type="submit" class="btn" value="确认修改"/>
    	
    	<input  type="button" class="btn" value="取消" onclick="check();"/>
    	</li>
    </ul> 
    </form>
    </div>
    
    <script>
    	function check(){
    		location.href="class!list.action";
    	}
    </script>
</body>

</html>

