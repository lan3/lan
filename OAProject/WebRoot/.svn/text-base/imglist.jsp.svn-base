<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
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
function tips_pop(){
  var MsgPop=document.getElementById("winpop");
  var popH=parseInt(MsgPop.style.height);
   if (popH==0){
   MsgPop.style.display="block";
  show=setInterval("changeH('up')",2);
   }
  else { 
   hide=setInterval("changeH('down')",2);
  }
}
function changeH(str) {
 var MsgPop=document.getElementById("winpop");
 var popH=parseInt(MsgPop.style.height);
 if(str=="up"){
  if (popH<=100){
  MsgPop.style.height=(popH+4).toString()+"px";
  }
  else{  
  clearInterval(show);
  }
 }
 if(str=="down"){ 
  if (popH>=4){  
  MsgPop.style.height=(popH-4).toString()+"px";
  }
  else{ 
  clearInterval(hide);   
  MsgPop.style.display="none";  //隐藏DIV
  }
 }
}
window.onload=function(){//加载
document.getElementById('winpop').style.height='0px';
setTimeout("tips_pop()",800);//3秒后调用tips_pop()这个函数
}
</script>

</head>

<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="default.jsp">首页</a></li>
    <li><a href="#">教员反馈-查看结果</a></li>
    </ul>
    </div>
    <div width="100%">
    	<c:forEach items="${list}" var="facu">
    		<table border="1" bordercolor="red" style="text-align:center;float:left">
		<tr>
			<td>教员:${facu.ENAME }
			</td>
			<td colspan="3">班级:${facu.FCLASS }
			</td>
			<td colspan="5">得分</td>
		</tr>
		<tr>
			<td colspan="4">反馈项</td>
			<td>5</td>
			<td>4</td>
			<td>3</td>
			<td>2</td>
			<td>1</td>
		</tr>
		<tr>
			<td colspan="4">课堂准备充分，授课思路清晰</td>
			<td><input type="radio"  value="5" ${facu.W1==5? 'checked':'' } disabled></td>
			<td><input type="radio"  value="4" ${facu.W1==4? 'checked':'' } disabled></td>
			<td><input type="radio"  value="3" ${facu.W1==3? 'checked':'' } disabled></td>
			<td><input type="radio"  value="2" ${facu.W1==2? 'checked':'' } disabled></td>
			<td><input type="radio"  value="1" ${facu.W1==1? 'checked':'' } disabled></td>
		</tr>
		<tr>
			<td colspan="4">案例丰富实用，讲解与实战演示结合</td>
			<td><input type="radio"  value="5" ${facu.W2==5? 'checked':'' } disabled></td>
			<td><input type="radio"  value="4" ${facu.W2==4? 'checked':'' } disabled></td>
			<td><input type="radio"  value="3" ${facu.W2==3? 'checked':'' } disabled></td>
			<td><input type="radio"  value="2" ${facu.W2==2? 'checked':'' } disabled></td>
			<td><input type="radio"  value="1" ${facu.W2==1? 'checked':'' } disabled></td>
		</tr>
		<tr>
			<td colspan="4">课堂气氛活跃，语言生动活泼</td>
			<td><input type="radio"  value="5" ${facu.W3==5? 'checked':'' } disabled></td>
			<td><input type="radio"  value="4" ${facu.W3==4? 'checked':'' } disabled></td>
			<td><input type="radio"  value="3" ${facu.W3==3? 'checked':'' } disabled></td>
			<td><input type="radio"  value="2" ${facu.W3==2? 'checked':'' } disabled></td>
			<td><input type="radio"  value="1" ${facu.W3==1? 'checked':''  } disabled></td>
		</tr>
		<tr>
			<td colspan="4">技术实力强，知识面广，经验丰富</td>
			<td><input type="radio"  value="5" ${facu.W4==5? 'checked':'' } disabled></td>
			<td><input type="radio"  value="4" ${facu.W4==4? 'checked':'' } disabled></td>
			<td><input type="radio"  value="3" ${facu.W4==3? 'checked':'' } disabled></td>
			<td><input type="radio"  value="2" ${facu.W4==2? 'checked':'' } disabled></td>
			<td><input type="radio"  value="1" ${facu.W4==1? 'checked':''  } disabled></td>
		</tr>
		<tr>
			<td colspan="4">辅导学院耐心细致，解决问题能力强</td>
			<td><input type="radio"  value="5" ${facu.W5==5? 'checked':'' } disabled></td>
			<td><input type="radio"  value="4" ${facu.W5==4? 'checked':'' } disabled></td>
			<td><input type="radio"  value="3" ${facu.W5==3? 'checked':'' } disabled></td>
			<td><input type="radio"  value="2" ${facu.W5==2? 'checked':'' } disabled></td>
			<td><input type="radio"  value="1" ${facu.W5==1? 'checked':'' } disabled></td>
		</tr>
		<tr>
			<td colspan="4">及时讲解练习中普遍存在的问题</td>
			<td><input type="radio"  value="5" ${facu.W6==5? 'checked':'' } disabled></td>
			<td><input type="radio"  value="4" ${facu.W6==4? 'checked':'' } disabled></td>
			<td><input type="radio"  value="3" ${facu.W6==3? 'checked':'' } disabled></td>
			<td><input type="radio"  value="2" ${facu.W6==2? 'checked':'' } disabled></td>
			<td><input type="radio"  value="1" ${facu.W6==1? 'checked':'' } disabled></td>
		</tr>
		<tr>
			<td colspan="4">课堂纪律管理是否严格</td>
			<td><input type="radio"  value="5" ${facu.W7==5? 'checked':'' } disabled></td>
			<td><input type="radio"  value="4" ${facu.W7==4? 'checked':'' } disabled></td>
			<td><input type="radio"  value="3" ${facu.W7==3? 'checked':'' } disabled></td>
			<td><input type="radio"  value="2" ${facu.W7==2? 'checked':'' } disabled></td>
			<td><input type="radio"  value="1" ${facu.W7==1? 'checked':'' } disabled></td>
		</tr>
		<tr>
			<td colspan="4">作业检查是否认真，到位</td>
			<td><input type="radio"  value="5" ${facu.W8==5? 'checked':'' } disabled></td>
			<td><input type="radio"  value="4" ${facu.W8==4? 'checked':'' } disabled></td>
			<td><input type="radio"  value="3" ${facu.W8==3? 'checked':'' } disabled></td>
			<td><input type="radio"  value="2" ${facu.W8==2? 'checked':'' } disabled></td>
			<td><input type="radio"  value="1" ${facu.W8==1? 'checked':'' } disabled></td>
		</tr>
		<tr>
		<td colspan="2">问题与建议</td>
		<td colspan="7"><textarea  cols="45" name="facu.fpro" disabled>${facu.FPRO }</textarea></td>
		</tr>
	</table>
	
	</c:forEach>
	</div>

    
	<div class="clear"></div>
	<div class="message">共<i class="blue">${totalpage }</i>条记录，当前显示第&nbsp;<i class="blue">${currpage+1 }&nbsp;</i>页</div>
    <div class="pagin">
    	<ul class="paginList">
        <li class="paginItem"><a href="edufacufind?currpage=${currpage-1 }&ename=${ename }"><span class="pagepre"></span></a></li>
		<c:forEach begin="1" end="${totalrow}" var="s">
			<li ${s==currpage ? 'class="paginItem current"':'class="paginItem"' }><a href="edufacufind?currpage=${s-1 }&ename=${ename }">${s}</a></li>
		</c:forEach>
        
        <li class="paginItem"><a href="edufacufind?currpage=${currpage+1 }&ename=${ename }"><span class="pagenxt"></span></a></li>
        </ul>
    </div>
   </body>

</html>
