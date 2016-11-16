<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
		 $(".add").click(function(){
		 	location.href="wcheckdesc!seldata.action";
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
					<a href="#">考勤异议说明</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">
			<div class="tools">
				<ul class="toolbar">
					<li class="add">
						<span><img src="images/t01.png" /> </span>添加
					</li>
				</ul>

			</div>
			<table class="tablelist" id="tabProduct">
				<tr>
					<td>
						<input onclick="xuan('qx')" type="checkbox" />
					</td>
					<td Name="Num" EditType="TextBox">
						编号
						<i class="sort"><img src="images/px.gif" /> </i>
					</td>
					<td EditType="TextBox">
						员工ID
					</td>
					<td EditType="TextBox">
						时间
					</td>
					<td EditType="TextBox">
						第几次未打卡
					</td>
					<td EditType="TextBox">
						未打卡原因
					</td>
					<td EditType="TextBox">
						审批人
					</td>
					<td>
						状态
					</td>
					<td>
						操作
					</td>
				</tr>
				
				<c:forEach items="${list}" var="wcheck">
					<tr>
						<td>
							<input name="check[]" value="${wcheck.deid }"  type="checkbox" />
						</td>
						<td>${wcheck.deid }</td>
						<td><c:forEach items="${emplist}" var="emp">
							${emp.EID==wcheck.eid?emp.ENAME:'' }
						</c:forEach></td>
						<td>
							<fmt:formatDate value="${wcheck.edate }" pattern="yyyy-MM-dd"/>
						</td>
						<td>${wcheck.num }</td>
						<td>${wcheck.dreason }</td>
						<td><c:forEach items="${emplist}" var="emp">
							${emp.EID==wcheck.dup?emp.ENAME:'' }
						</c:forEach></td>
						<td>
							<c:if test="${wcheck.dstatus==0 }">  <!-- 未提交 -->
								<a href="wcheckdesc!change.action?wdesc.deid=${wcheck.deid }" class="tablelink">提交</a>
							</c:if>
							<c:if test="${wcheck.dstatus==1}">    <!-- 待审核 -->
								<font color="#1eb6e1">待审核</font>
							</c:if>
							<c:if test="${wcheck.dstatus==2}">   <!-- 审核成功 -->
								<font color="#0df235">审核成功</font>
							</c:if>
							<c:if test="${wcheck.dstatus==3}">   <!-- 审核失败 -->
								<font color="red">审核失败</font>
							</c:if>
						</td>
						<td>
							<c:if test="${wcheck.dstatus==0}">
								<a href="wcheckdesc!toupd.action?wdesc.deid=${wcheck.deid  }&wdesc.eid=${wcheck.eid }" class="tablelink">查看</a>
								<a onclick="return confirm('确认要删除吗？')"
									href="wcheckdesc!del.action?wdesc.deid=${wcheck.deid  }" class="tablelink">
									删除</a>
							</c:if>
							<c:if test="${wcheck.dstatus==1}">   <!-- 待审核 -->
								请耐心等待！
							</c:if>
							<c:if test="${wcheck.dstatus==2}">   <!-- 审核成功 -->
								无
							</c:if>
							<c:if test="${wcheck.dstatus==3}">   <!-- 审核失败 -->
								无
							</c:if>
						</td>
					</tr>
				</c:forEach>
			</table>
			
			<div class="pagin">
				<div class="message">
					共
					<i class="blue">${totalrow }</i>条记录，当前显示第&nbsp;
					<i class="blue">${currpage }&nbsp;</i>页/${totalpage }页
				</div>
			<ul class="paginList">
				<li class="paginItem">
					<a href="wcheckdesc!list.action?page=${currpage-1 }"><span
						class="pagepre"></span> </a>
				</li>
				<c:forEach begin="1" end="${totalpage}" var="i">
					<li class="paginItem">
						<a href="wcheckdesc!list.action?page=${i }">${i }</a>
					</li>
				</c:forEach>
				
				<li class="paginItem">
					<a href="wcheckdesc!list.action?page=${currpage+1 }"><span
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
					<input name="" type="button" onclick="topage();" class="sure"
						value="确定" />
					&nbsp;
					<input name="" type="button" class="cancel" value="取消" />
				</div>

			</div>
			<script type="text/javascript">
				$('.tablelist tbody tr:odd').addClass('odd');
				function topage(){
					
				}
			</script>
	</body>

</html>
