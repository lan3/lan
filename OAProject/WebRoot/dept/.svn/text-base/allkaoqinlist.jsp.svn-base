<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>无标题文档</title>
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
			
		  $(".onclick").click(function(){
		  	 location.href="kaoqin!add.action";
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
            function upload(){  //判断是否已导过
				$("#file").trigger("click");//触发file的点击事件
			}
			function check(val){   //验证是否是xls文件
				var name=val.substring(val.lastIndexOf("."),val.length); 
				name=name.toLowerCase();
				if(name!='.xls'){
					alert("对不起，导入数据格式必须是xls格式文件哦，请您调整格式后重新上传，谢谢 ！"); 
				}else{
					$("#frm").submit();
				}
			}
			function show(){    //判断是否有考勤记录
				if(${msg!=null}){
					alert("对不起，没有您的考勤记录呦！");
				}
				if(${num!=null&&num!=0}){
					document.getElementById("showdiv").style.display="inline";
				}
			}
</script>
<style>
.btn {
	width: 137px;
	height: 35px;
	background: url(images/btnbg.png) no-repeat;
	font-size: 14px;
	font-weight: bold;
	color: #fff;
	cursor: pointer;
}
</style>
	</head>

	<body onload="show();">
		<div class="rightinfo">
			<div class="tools">
				<form action="kaoqin!addall" id="frm" method="post" enctype="multipart/form-data">
				<input type="file" id="file" name="file" onchange="check(this.value);"
				style="filter:alpha(opacity=0);opacity:0;width:0;height:0"/>
				<input type="button" onclick="upload()"  class="btn"
					value="导入Excel" />
				</form>
			</div>
			<br/>
			<div id="showdiv" style="display: none;">
			<table border="1" bordercolor="#1eb6e1">
				<tr bgcolor="white">
					<th rowspan="2">
						序号
					</th>
					<th rowspan="2">
						姓名
					</th>
					<th colspan="32">
						2016-6
					</th>
				</tr>
				<tr bgcolor="white">
					<c:forEach items="${list}" var="kaoqin">
						<th>
							${kaoqin.DAYS }
						</th>
					</c:forEach>
				</tr>
				<c:forEach items="${l}" var="kaoqin" varStatus="index">
					<tr bgcolor="white">
						<td>
							${kaoqin.EID }
						</td>
						<td>
							${kaoqin.ENAME }
						</td>
						<c:if test="${kaoqin.ENAME=='刘飞'}">
						<c:forEach  items="${li刘飞}" var="s">
							<td>
								${s.KTIME }
							</td>
						</c:forEach>
						</c:if>
						<c:if test="${kaoqin.ENAME=='李芳平'}">
						<c:forEach  items="${li李芳平}" var="s">
							<td>
								${s.KTIME }
							</td>
						</c:forEach>
						</c:if>
						<c:if test="${kaoqin.ENAME=='廖文汉'}">
						<c:forEach  items="${li廖文汉}" var="s">
							<td>
								${s.KTIME }
							</td>
						</c:forEach>
						</c:if>
						<c:if test="${kaoqin.ENAME=='赖国荣'}">
						<c:forEach  items="${li赖国荣}" var="s">
							<td>
								${s.KTIME }
							</td>
						</c:forEach>
						</c:if>
						<c:if test="${kaoqin.ENAME=='懂新星'}">
						<c:forEach  items="${li懂新星}" var="s">
							<td>
								${s.KTIME }
							</td>
						</c:forEach>
						</c:if>
						<c:if test="${kaoqin.ENAME=='钟深财'}">
						<c:forEach  items="${li钟深财}" var="s">
							<td>
								${s.KTIME }
							</td>
						</c:forEach>
						</c:if>
						<c:if test="${kaoqin.ENAME=='朱吉祥'}">
						<c:forEach  items="${li朱吉祥}" var="s">
							<td>
								${s.KTIME }
							</td>
						</c:forEach>
						</c:if>
						<c:if test="${kaoqin.ENAME=='何庆'}">
						<c:forEach  items="${li何庆}" var="s">
							<td>
								${s.KTIME }
							</td>
						</c:forEach>
						</c:if>
						<c:if test="${kaoqin.ENAME=='王根生'}">
						<c:forEach  items="${li王根生}" var="s">
							<td>
								${s.KTIME }
							</td>
						</c:forEach>
						</c:if>
						<c:if test="${kaoqin.ENAME=='曾飞'}">
						<c:forEach  items="${li曾飞}" var="s">
							<td>
								${s.KTIME }
							</td>
						</c:forEach>
						</c:if>
						<c:if test="${kaoqin.ENAME=='黄宝康'}">
						<c:forEach  items="${li黄宝康}" var="s">
							<td>
								${s.KTIME }
							</td>
						</c:forEach>
						</c:if>
					</tr>
				</c:forEach>
			</table>
			</div>
	</body>

</html>
