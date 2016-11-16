<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>无标题文档</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<link href="css/select.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
		<script type="text/javascript" src="js/select-ui.min.js"></script>
		<script type="text/javascript" src="editor/kindeditor.js"></script>
		<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
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
		width : 100,
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
            function tosel1(){
	         	location.href="wcheckdesc!seldata1.action";
            }
            function tosel2(){
            	var t1= document.getElementById("d11").value;
	         	var t2= document.getElementById("d12").value;
	         	location.href="wcheckdesc!seldata2?t1="+t1+"&t2="+t2;
            }
            function tosel3(){
            	location.href="wcheckdesc!seldata3.action";
            }
            function check(){
            	var t1= document.getElementById("d11").value;
	         	var t2= document.getElementById("d12").value;
	         	if(t1>t2){
	         		document.getElementById("d12").value=t1;
	         	}
            }
             function tosel4(){
	            var peid=document.getElementById("empename").value;
	            if(peid==${session.id}){  //查看的是自己
	            	alert("查看无效，自己不能审批自己呦！");
	            	return ;
	            }
	         	location.href="wcheckdesc!seldata4?peid="+peid;
            }
</script>
	</head>
	<body >
		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="default.jsp">首页</a>
				</li>
				<li>
					<a href="#">考勤异议说明审核</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">
			<div class="tools">
				<ul class="seachform">
				<li>
						<label>
							员工查询:
						</label>
						<div class="vocation">
						<select onchange="tosel4();" id="empename"  class="select3" >
							<option>--选择员工--</option>
							<c:forEach items="${emplist}" var ="emp">
								<option value="${emp.EID}">${emp.ENAME }</option>
							</c:forEach>
						</select>
						</div>
					</li>
					<li>
						<label>
							日期:
						</label>
						<input type="text" id="d11" readonly="readonly" class="scinput" class="Wdate"
							onclick="WdatePicker()" name="leave.lstarttime" />
							至
						<input type="text" id="d12" readonly="readonly" class="scinput" class="Wdate"
							onclick="WdatePicker()" onchange="check();" name="leave.lstarttime" />
					</li>
					<li>
						<label>
							&nbsp;
						</label>
						<input type="button"  onclick="tosel2();" class="btn" value="查询"  />
					</li>
					<li>
						 <input type="button"  onclick="tosel3();" class="btn" value="查看本周"  />
					</li>
					<li>
						<input type="button"  onclick="tosel1();" class="btn" value="查看已审批列表"  />
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
						员工
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
							<input name="check[]" value="${wcheck.DEID }"  type="checkbox" />
						</td>
						<td>${wcheck.DEID }</td>
						<td>
							<c:forEach items="${emplist}" var="emp">
								${emp.EID==wcheck.EID?emp.ENAME:'' }
							</c:forEach>
						</td>
						<td>
							<fmt:formatDate value="${wcheck.EDATE }" pattern="yyyy-MM-dd"/>
						</td>
						<td>
							${wcheck.NUM }
						</td>
						<td>
							${wcheck.DREASON }
						</td>
						<td>
							<c:forEach items="${emplist}" var="emp">
								${emp.EID==wcheck.DUP?emp.ENAME:'' }
							</c:forEach>
						</td>
						<td>
							<c:if test="${wcheck.DSTATUS==1}">    <!-- 待审核 -->
								<font color="#1eb6e1">待审核</font>
							</c:if>
							<c:if test="${wcheck.DSTATUS==2}">   <!-- 审核成功 -->
								<font color="#0df235">审核成功</font>
							</c:if>
							<c:if test="${wcheck.DSTATUS==3}">   <!-- 审核失败 -->
								<font color="red">审核失败</font>
							</c:if>
						</td>
						
						<td style="padding-top: 0px">
							<c:if test="${wcheck.DSTATUS==1}">
								<a href="javascript:loc(${wcheck.DEID })" id="a1" class="tablelink">同意</a>
								<a href="wcheckdesc!shenhe.action?wdesc.deid=${wcheck.DEID }&status=0" id="a2" class="tablelink">不同意</a>
							</c:if>
							<div id="${wcheck.DEID }" style="display: none;" class="vocation">
							<select id="sel" onchange="toshenhe(${wcheck.DEID },${wcheck.EID },this.value);" class="select3" >
								<option>-下一审核人-</option>
								<option value="0"></option>
								<c:forEach items="${emplist}" var="emp">
									<option value="${emp.EID}">${emp.ENAME }</option>
								</c:forEach>
							</select>
							</div>
							<c:if test="${wcheck.DSTATUS==2}">   <!-- 审核成功 -->
								<font color="#0df235">已同意</font>
							</c:if>
							
							<c:if test="${wcheck.DSTATUS==3}">   <!-- 审核失败 -->
								<font color="red">不同意</font>
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
					<a href="wcheckdesc!seldata4.action?page=${currpage-1 }"><span
						class="pagepre"></span> </a>
				</li>
				<c:forEach begin="1" end="${totalpage}" var="i">
					<li class="paginItem">
						<a href="wcheckdesc!seldata4.action?page=${i }">${i }</a>
					</li>
				</c:forEach>
				
				<li class="paginItem">
					<a href="wcheckdesc!seldata4.action?page=${currpage+1 }"><span
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
					<input name="#" type="button" onclick="topage();" class="sure"
						value="确定" />
					&nbsp;
					<input name="#" type="button" class="cancel" value="取消" />
				</div>
		</div>
			</div>
			
	</body>
		   <script type="text/javascript">
				$('.tablelist tbody tr:odd').addClass('odd');
				function topage(){
					location.href="wcheckdesc!seldata.action";
				}
				
				function loc(val){
					var a1= document.getElementById("a1");
					var a2= document.getElementById("a2");
					a1.style.display="none";
					a2.style.display="none";  //将其隐藏
					document.getElementById(val).style.display="inline";//显示下拉框
				}
				function toshenhe(val,eid,osid){
					if(osid==eid){
						alert("亲，不能给自己审批呦!");
						return ;
					}
					if(osid==${session.id}){
						alert("不能重复让自己审批呦!");
						return ;
					}
					location.href="wcheckdesc!shenhe.action?wdesc.deid="+val+"&osid="+osid+"&status=1";
				}
			</script>
</html>
