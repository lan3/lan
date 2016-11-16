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
					<a href="#">值班安排</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">

			<div class="tools">

				<ul class="toolbar">
					<li class="click">
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
					<td >
						员工
					</td>
					<td >
						值班日期
					</td>
					<td >
						值班范围
					</td>
					<td>
						班主任
					</td>
					<td>
						总值班
					</td>
					<td>
						操作
					</td>
				</tr>
				<c:forEach items="${list}" var="wdoing">
					<tr>
						<td>
							<input name="check[]" value="${dept.did }" type="checkbox" />
						</td>
						<td>${wdoing.wid }</td>
						<td>
							<c:forEach items="${emplist}" var="emp">
								${emp.EID==wdoing.eid?emp.ENAME:'' }
							</c:forEach>
						</td>
						<td>${wdoing.wdate }</td>
						<td>${wdoing.wfanwei }</td>
						<td>
							<c:forEach items="${emplist}" var="emp">
								${emp.EID==wdoing.bid?emp.ENAME:'' }
							</c:forEach>
						</td>
						<td>${wdoing.total }</td>
						<td>
							<a href="wdoing!toupd.action?wd.wid=${wdoing.wid }" class="tablelink">查看</a>
							<a onclick="return confirm('确认要删除吗？')"
								href="wdoing!del.action?wd.wid=${wdoing.wid }" class="tablelink">
								删除</a>
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
						<a href="wdoing!list.action?page=${currpage-1 }"><span
							class="pagepre"></span> </a>
					</li>
					<c:forEach begin="1" end="${totalpage}" var="i">
						<li class="paginItem">
							<a href="wdoing!list.action?page=${i }">${i }</a>
						</li>
					</c:forEach>
					<li class="paginItem">
						<a href="wdoing!list.action?page=${currpage+1 }"><span
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
				location.href="wdoing!seldata";
			}
			</script>

			<script language="javascript">
//设置多个表格可编辑
function EditTables(){
	for(var i=0;i<arguments.length;i++){
	   SetTableCanEdit(arguments[i]);
	}
}

//设置表格是可编辑的
function SetTableCanEdit(table){
	for(var i=1; i<table.rows.length;i++){
	   SetRowCanEdit(table.rows[i]);
	}
}

function SetRowCanEdit(row){
	for(var j=0;j<row.cells.length; j++){
	
		//如果当前单元格指定了编辑类型，则表示允许编辑
		var editType = row.cells[j].getAttribute("EditType");
		if(!editType){
			//如果当前单元格没有指定，则查看当前列是否指定
			editType = row.parentNode.rows[0].cells[j].getAttribute("EditType");
		}
		if(editType){
			row.cells[j].onclick = function (){
				EditCell(this);
			}
		}
	}

}

//设置指定单元格可编辑
function EditCell(element, editType){

	var editType = element.getAttribute("EditType");
	if(!editType){
	   //如果当前单元格没有指定，则查看当前列是否指定
	   editType = element.parentNode.parentNode.rows[0].cells[element.cellIndex].getAttribute("EditType");
	}

	switch(editType){
		case "TextBox":
		CreateTextBox(element, element.innerHTML);
		break;
		case "DropDownList":
		CreateDropDownList(element);
		break;
		default:
		break;
	}
}

//为单元格创建可编辑输入框
function CreateTextBox(element, value){
	//检查编辑状态，如果已经是编辑状态，跳过
	var editState = element.getAttribute("EditState");
	if(editState != "true"){
		//创建文本框
		var textBox = document.createElement("INPUT");
		textBox.type = "text";
		textBox.className="EditCell_TextBox";
		
		
		//设置文本框当前值
		if(!value){
			value = element.getAttribute("Value");
		}  
		textBox.value = value;
		
		//设置文本框的失去焦点事件
		textBox.onblur = function (){
			CancelEditCell(this.parentNode, this.value);
		}
		//向当前单元格添加文本框
		ClearChild(element);
		element.appendChild(textBox);
		textBox.focus();
		textBox.select();
		
		//改变状态变量
		element.setAttribute("EditState", "true");
		element.parentNode.parentNode.setAttribute("CurrentRow", element.parentNode.rowIndex);
	}

}

//为单元格创建选择框
function CreateDropDownList(element, value){
	//检查编辑状态，如果已经是编辑状态，跳过
	var editState = element.getAttribute("EditState");
	if(editState != "true"){
		//创建下接框
		var downList = document.createElement("Select");
		downList.className="EditCell_DropDownList";
	
		//添加列表项
		var items = element.getAttribute("DataItems");
		if(!items){
			items = element.parentNode.parentNode.rows[0].cells[element.cellIndex].getAttribute("DataItems");
		}
	
		if(items){
			items = eval("[" + items + "]");
			for(var i=0; i<items.length; i++){
				var oOption = document.createElement("OPTION");
				oOption.text = items[i].text;
				oOption.value = items[i].value;
				downList.options.add(oOption);
			}
		}
	
		//设置列表当前值
		if(!value){
			value = element.getAttribute("Value");
		}
		downList.value = value;
	
		//设置创建下接框的失去焦点事件
		downList.onblur = function (){
			CancelEditCell(this.parentNode, this.value, this.options[this.selectedIndex].text);
		}
	
		//向当前单元格添加创建下接框
		ClearChild(element);
		element.appendChild(downList);
		downList.focus();
		
		//记录状态的改变
		element.setAttribute("EditState", "true");
		element.parentNode.parentNode.setAttribute("LastEditRow", element.parentNode.rowIndex);
	}

}


//取消单元格编辑状态
function CancelEditCell(element, value, text){
	element.setAttribute("Value", value);
	if(text){
		element.innerHTML = text;
	}else{
		element.innerHTML = value;
	}
	element.setAttribute("EditState", "false");

	//检查是否有公式计算
	CheckExpression(element.parentNode);
}

//清空指定对象的所有字节点
function ClearChild(element){
	element.innerHTML = "";
}

//添加行
function AddRow(table, index){
	var lastRow = table.rows[table.rows.length-1];
	var newRow = lastRow.cloneNode(true);
	table.tBodies[0].appendChild(newRow);
	SetRowCanEdit(newRow);
	return newRow;
}


//删除行
function DeleteRow(table, index){
	for(var i=table.rows.length - 1; i>0;i--){
		var chkOrder = table.rows[i].cells[0].firstChild;
		if(chkOrder){
			if(chkOrder.type = "CHECKBOX"){
				if(chkOrder.checked){
					//执行删除
					table.deleteRow(i);
				}
			}
		}
	}
}

//提取表格的值,JSON格式
function GetTableData(table){
	var tableData = new Array();
	alert("行数：" + table.rows.length);
	for(var i=1; i<table.rows.length;i++){
		tableData.push(GetRowData(tabProduct.rows[i]));
	}
	return tableData;
}

//提取指定行的数据，JSON格式
function GetRowData(row){
	var rowData = {};
	for(var j=0;j<row.cells.length; j++){
		name = row.parentNode.rows[0].cells[j].getAttribute("Name");
		if(name){
			var value = row.cells[j].getAttribute("Value");
			if(!value){
				value = row.cells[j].innerHTML;
			}
			rowData[name] = value;
		}
	}
	//alert("ProductName:" + rowData.ProductName);
	//或者这样：alert("ProductName:" + rowData["ProductName"]);
	return rowData;
}

//检查当前数据行中需要运行的字段
function CheckExpression(row){
	for(var j=0;j<row.cells.length; j++){
		expn = row.parentNode.rows[0].cells[j].getAttribute("Expression");
		//如指定了公式则要求计算
		if(expn){
			var result = Expression(row,expn);
			var format = row.parentNode.rows[0].cells[j].getAttribute("Format");
			if(format){
				//如指定了格式，进行字值格式化
				row.cells[j].innerHTML = formatNumber(Expression(row,expn), format);
			}else{
				row.cells[j].innerHTML = Expression(row,expn);
			}
		}
	}
}

//计算需要运算的字段
function Expression(row, expn){
	var rowData = GetRowData(row);
	//循环代值计算
	for(var j=0;j<row.cells.length; j++){
		name = row.parentNode.rows[0].cells[j].getAttribute("Name");
		if(name){
			var reg = new RegExp(name, "i");
			expn = expn.replace(reg, rowData[name].replace(/\,/g, ""));
		}
	}
	return eval(expn);
}

///////////////////////////////////////////////////////////////////////////////////
/** 
* 格式化数字显示方式   
* 用法 
* formatNumber(12345.999,'#,##0.00'); 
* formatNumber(12345.999,'#,##0.##'); 
* formatNumber(123,'000000'); 
* @param num 
* @param pattern 
*/ 
/* 以下是范例
formatNumber('','')=0
formatNumber(123456789012.129,null)=123456789012
formatNumber(null,null)=0
formatNumber(123456789012.129,'#,##0.00')=123,456,789,012.12
formatNumber(123456789012.129,'#,##0.##')=123,456,789,012.12
formatNumber(123456789012.129,'#0.00')=123,456,789,012.12
formatNumber(123456789012.129,'#0.##')=123,456,789,012.12
formatNumber(12.129,'0.00')=12.12
formatNumber(12.129,'0.##')=12.12
formatNumber(12,'00000')=00012
formatNumber(12,'#.##')=12
formatNumber(12,'#.00')=12.00
formatNumber(0,'#.##')=0
*/
function formatNumber(num,pattern){   
	var strarr = num?num.toString().split('.'):['0'];   
	var fmtarr = pattern?pattern.split('.'):[''];   
	var retstr='';   
	   
	// 整数部分   
	var str = strarr[0];   
	var fmt = fmtarr[0];   
	var i = str.length-1;     
	var comma = false;   
	for(var f=fmt.length-1;f>=0;f--){   
		switch(fmt.substr(f,1)){   
			case '#':   
			if(i>=0 ) retstr = str.substr(i--,1) + retstr;   
			break;   
			case '0':   
			if(i>=0) retstr = str.substr(i--,1) + retstr;   
			else retstr = '0' + retstr;   
			break;   
			case ',':   
			comma = true;   
			retstr=','+retstr;   
			break;   
		}   
	}   
	
	if(i>=0){   
		if(comma){   
			var l = str.length;   
			for(;i>=0;i--){   
				retstr = str.substr(i,1) + retstr;   
				if(i>0 && ((l-i)%3)==0) retstr = ',' + retstr;    
			}   
		}   
		else retstr = str.substr(0,i+1) + retstr;   
	}   
	   
	retstr = retstr+'.';   
	// 处理小数部分   
	str=strarr.length>1?strarr[1]:'';   
	fmt=fmtarr.length>1?fmtarr[1]:'';   
	i=0;   
	for(var f=0;f<fmt.length;f++){   
		switch(fmt.substr(f,1)){   
			case '#':   
			if(i<str.length) retstr+=str.substr(i++,1);   
			break;   
			case '0':   
			if(i<str.length) retstr+= str.substr(i++,1);   
			else retstr+='0';   
			break;   
		}   
	}
	return retstr.replace(/^,+/,'').replace(/\.$/,'');  
}  
</script>

<script type="text/javascript">
var tabProduct = document.getElementById("tabProduct");

// 设置表格可编辑
// 可一次设置多个，例如：EditTables(tb1,tb2,tb2,......)
EditTables(tabProduct);
</script>
	</body>

</html>
