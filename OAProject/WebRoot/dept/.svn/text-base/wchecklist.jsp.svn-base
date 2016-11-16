<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>无标题文档</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>

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
		
function gehang(){
   //获取tr节点
   //var tr=document.getElementsByTagName("tr");
   //为第一行添加背景颜色
     // tr[0].style.background="#00FF66";
      //为最后一行添加背景颜色
      //tr[tr.length-1].style.background="#00FF66";
               }
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
            var input=document.getElementsByName("check[]");
            var dids=document.getElementsByName("check[]").value;
            for(var i=0;i<dids.length;i++){
            	alert(dids[i]);
            }
            for(var i=input.length-1; i>=0;i--){
                   if(input[i].checked==true){
                       //获取td节点
                       var td=input[i].parentNode;
                      //获取tr节点
                      var tr=td.parentNode;
                      //获取table
                      var table=tr.parentNode;
                      //移除子节点
                      table.removeChild(tr);
                 }
               
             }
       
            }
</script>
	</head>
	<body onload="gehang()">
		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="default.jsp">首页</a>
				</li>
				<li>
					<a href="#">员工管理</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">
			<div class="tools">
				<ul class="toolbar">
					<li class="click">
						<span><img src="images/t01.png" /> </span>添加
					</li>
					<li class="click">
						<span><img src="images/t02.png" /> </span>修改
					</li>
					<li class="click">
						<span><img src="images/t03.png" /> </span>删除
					</li>
				</ul>

			</div>
			<table class="tablelist" id="tabProduct">
				<tr>
					<td>
						<input onclick="xuan('qx')" type="checkbox" />
					</td>
					<td Name="Num">
						编号
						<i class="sort"><img src="images/px.gif" /> </i>
					</td>
					<td EditType="TextBox">
						员工ID
					</td>
					<td EditType="TextBox">
						打卡日期
					</td>
					<td EditType="TextBox">
						打卡记录
					</td>
					<td EditType="TextBox">
						打卡时间
					</td>
					<td>
						操作
					</td>
				</tr>
				
				<c:forEach items="${list}" var="wcheck">
					<tr>
						<td>
							<input name="check[]"  type="checkbox" />
						</td>
						<td>${wcheck.WID }</td>
						<td>${wcheck.EID }</td>
						<td>${wcheck.WDATE }</td>
						<td>
							第一次打卡：${wcheck.S1==null?'未签':wcheck.S1 }<br/>
							&nbsp;&nbsp;&nbsp;第二次打卡：${wcheck.S2==null?'未签':wcheck.S2 }<br/>
							&nbsp;&nbsp;&nbsp;第三次打卡：${wcheck.S3==null?'未签':wcheck.S3 }<br/>
							&nbsp;&nbsp;&nbsp;第四次打卡：${wcheck.S4==null?'未签':wcheck.S4 }<br/>
							&nbsp;&nbsp;&nbsp;第五次打卡：${wcheck.S5==null?'未签':wcheck.S5 }<br/>
							&nbsp;&nbsp;&nbsp;第六次打卡：${wcheck.S6==null?'未签':wcheck.S6 }<br/>
						</td>
						<td>
						<c:if test="${wcheck.W1==null}"><a href="dept/wcheckdesc.jsp?wdesc.eid=${wcheck.EID}&num=1&wdesc.edate=${wcheck.WDATE}" class="tablelink">异议说明</a></c:if>
						<c:if test="${wcheck.W1!=null}">${wcheck.W1}</c:if>	<br/>
						&nbsp;&nbsp;&nbsp;<c:if test="${wcheck.W2==null}"><a href="dept/wcheckdesc.jsp?wdesc.eid=${wcheck.EID}&num=2wdesc.edate=${wcheck.WDATE}" class="tablelink">异议说明</a></c:if>
						<c:if test="${wcheck.W2!=null}">${wcheck.W2}</c:if>	<br/>
						&nbsp;&nbsp;&nbsp;<c:if test="${wcheck.W3==null}"><a href="dept/wcheckdesc.jsp?wdesc.eid=${wcheck.EID}&num=3wdesc.edate=${wcheck.WDATE}" class="tablelink">异议说明</a></c:if>
						<c:if test="${wcheck.W3!=null}">${wcheck.W3}</c:if>	<br/>
						&nbsp;&nbsp;&nbsp;<c:if test="${wcheck.W4==null}"><a href="dept/wcheckdesc.jsp?wdesc.eid=${wcheck.EID}&num=4wdesc.edate=${wcheck.WDATE}" class="tablelink">异议说明</a></c:if>
						<c:if test="${wcheck.W4!=null}">${wcheck.W4}</c:if>	<br/>
						&nbsp;&nbsp;&nbsp;<c:if test="${wcheck.W5==null}"><a href="dept/wcheckdesc.jsp?wdesc.eid=${wcheck.EID}&num=5wdesc.edate=${wcheck.WDATE}" class="tablelink">异议说明</a></c:if>
						<c:if test="${wcheck.W5!=null}">${wcheck.W5}</c:if>	<br/>
						&nbsp;&nbsp;&nbsp;<c:if test="${wcheck.W6==null}"><a href="dept/wcheckdesc.jsp?wdesc.eid=${wcheck.EID}&num=6wdesc.edate=${wcheck.WDATE}" class="tablelink">异议说明</a></c:if>
						<c:if test="${wcheck.W6!=null}">${wcheck.W6}</c:if>	<br/>
						</td>
						<td>
							
							<a onclick="return confirm('确认要删除吗？')"
								href="wcheck!del.action?wc.wid =${wcheck.WID  }" class="tablelink">
								删除</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			<div class="pagin">
				<div class="message">
					共
					<i class="blue"></i>条记录，当前显示第&nbsp;
					<i class="blue">&nbsp;</i>页/页
				</div>
				<ul class="paginList">
					<li class="paginItem">
						<a href="emp!list.action?page=${currpage-1 }"><span
							class="pagepre"></span> </a>
					</li>
						<li class="paginItem">
						</li>
					<li class="paginItem">
						<a href="emp!list.action?page=${currpage+1 }"><span
							class="pagenxt"></span> </a>
					</li>
				</ul>
			</div>
			<div class="tip">
				<div class="tiptop">
					<span>提示信息</span><a></a>
				</div>

				<div class="tipinfo">
					<span><img src="images/ticon.png" /> </span>
					<div class="tipright">
						<p>
							是否确认对信息的修改 ？
						</p>
						<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
					</div>
				</div>

				<div class="tipbtn">
					<input name="" type="button" onclick="AddRow(document.getElementById('tabProduct'),1)"" class="sure"
						value="确定" />
					&nbsp;
					<input name="" type="button" class="cancel" value="取消" />
				</div>

			</div>
			<script type="text/javascript">
				$('.tablelist tbody tr:odd').addClass('odd');
			</script>
	</body>

</html>
