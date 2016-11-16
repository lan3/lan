
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
    <li><a href="#">表单</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    
    <form action="stu!update.action" method="post">
    <ul class="forminfo">
      <input type="hidden" name="s.sid" value="${stu.sid }"/>
    <li><label>学生姓名：</label>
    	
    	<input type="text" name="s.sname" value="${stu.sname }" class="dfinput" /><i></i></li>
    <li><label>性别： </label>
    	<div class="vocation">
    	<input type="radio" name="s.sex" value="男" ${stu.sex eq "男"?"checked":"" }/>男
    	<input type="radio" name="s.sex" value="女" ${stu.sex eq "女"?"checked":"" }/>女
    	</div>
    <li><label>年龄：</label>
    	<div class="vocation">
    		<select name="s.age" class="select3">
    				<option value="10" ${stu.age eq "10"?"selected":"" }>10</option>
    				<option value="11" ${stu.age eq "11"?"selected":"" }>11</option>
    				<option value="12" ${stu.age eq "12"?"selected":"" }>12</option>
    				<option value="13" ${stu.age eq "13"?"selected":"" }>13</option>
    				<option value="14" ${stu.age eq "14"?"selected":"" }>14</option>
    				<option value="15" ${stu.age eq "15"?"selected":"" }>15</option>
    				<option value="16" ${stu.age eq "16"?"selected":"" }>16</option>
    				<option value="17" ${stu.age eq "17"?"selected":"" }>17</option>
    				<option value="18" ${stu.age eq "18"?"selected":"" }>18</option>
    				<option value="19" ${stu.age eq "19"?"selected":"" }>19</option>
    				<option value="20" ${stu.age eq "20"?"selected":"" }>20</option>
    				<option value="21" ${stu.age eq "21"?"selected":"" }>21</option>
    				<option value="22" ${stu.age eq "22"?"selected":"" }>22</option>
    				<option value="23" ${stu.age eq "23"?"selected":"" }>23</option>
    				<option value="24" ${stu.age eq "24"?"selected":"" }>24</option>
    				<option value="25" ${stu.age eq "25"?"selected":"" }>25</option>
    			</select>
    		</div>	
		</li>
    <li><label>生日</label>
    	<div class="vocation">
    	<input type="text" name="s.birthday" value="${stu.birthday }"/>
    	</div>
    <li><label>所在班级</label>
    	<div class="vocation">
    	<select name="s.classid" class="select3">
    		<c:forEach items="${classes}" var="class">
    			<option  ${stu.classid==class.classname? 'selected':''}>${class.classname } </option>
    		</c:forEach>
    	</select>
    	</div>
    </li>
    <li><label>所在宿舍</label>
    	<div class="vocation">
	    	<select name="s.hourid" class="select3">
	    		<c:forEach items="${hour}" var="hour">
	    			<option   ${stu.hourid==hour.HOURMARK? 'selected':''}>${hour.HOURMARK } </option>
	    		</c:forEach>
	    	</select>
    	</div>
    </li>
    <li><label>学生头像</label>
	    <div class="vocation">
	    	<input type="file" name="fil"/>
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
    		location.href="stu!stulist.action";
    	}
    </script>
</body>

</html>



