<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript" src="js/jsapi.js"></script>
<script type="text/javascript" src="js/format+zh_CN,default,corechart.I.js"></script>		
<script type="text/javascript" src="js/jquery.gvChart-1.0.1.min.js"></script>
<script type="text/javascript" src="js/jquery.ba-resize.min.js"></script>
<script src="layer/laycode.min.js"></script>
 <script src="layer/demo.js"></script>
 <script src="layer/jquery.min.js"></script>
 <script src="layer/layer.js"></script>
	
	<script>
		 $.post("mainbuty",{},function(data){
		 		var list=data.list;
		 		var emplist=data.emplist;
		 		$.each(list,function(i,wdoing){
		 			
		 				var duty=list[i];
		 			var tr=$("<tr>");
		 			var ename="";
		 			
		 			$.each(emplist,function(j,emp){
		 				if(emp.EID==wdoing.eid){
		 					ename=emp.ENAME;
		 				}
		 			});
		 			var td2=$("<td>",{
		 				"text":ename
		 			});
		 			var td3=$("<td>",{
		 				"text":wdoing.wdate
		 			});
		 			var td4=$("<td>",{
		 				"text":wdoing.wfanwei 
		 			});
		 			var name="";
		 			
		 			$.each(emplist,function(j,emp){
		 				if(emp.EID==wdoing.bid){
		 					name=emp.ENAME;
		 				}
		 			});
		 			var td5=$("<td>",{
		 				"text":name
		 			});
		 			var td6=$("<td>",{
		 				"text":wdoing.total
		 			});
		 			tr.append(td2);
		 			tr.append(td3);
		 			tr.append(td4);
		 			tr.append(td5);
		 			tr.append(td6);
		 			$("#tabProduct").append(tr);
		 		});

		 },"json");
		 
	</script>
	<script>
	
		$.post("mainstumsg",{},function(data){
			var list=data.list;
			
			$.each(list,function(i,msg){
				
				var li=$("<li>");
				var a=$("<a>",{
				
					"href":"msgsel.action?msg.msgid="+msg.msgid,
					"text":msg.msgtitle
				});
				li.append(a);
				$("#msglist").append(li);
			});
		},"json");
	</script>
	
	<script>
			$.post("mainphon",{},function(data){
				var list=data.list;
				$.each(list,function(i,p){
					var tr=$("<tr>");
					var td1=$("<td>",{
						"text":p.ENAME
					});
					var td2=$("<td>",{
						"text":p.ETEL
					});
					
					tr.append(td1);
					tr.append(td2);
					$("#phon").append(tr);
				});
			
			},"json");
	</script>
	<script>
	
		$.post("maintongji",{},function(data){
			document.getElementById("empa").innerHTML=data.count1;
			document.getElementById("stua").innerHTML=data.count2;
			document.getElementById("classa").innerHTML=data.count3;
			document.getElementById("obja").innerHTML=data.count4;
		},"json");
		
	</script>
	
		<script>
	<%   
	//session.setAttribute("userpwd","");
		if((String)session.getAttribute("userpwd")!=null){
			String  pwd=(String)session.getAttribute("userpwd");
	%>
	function check(){
	<%
		if(pwd.equals("123")){ // 判断初始密码
			  %>
			if(confirm("系统检测到您的账户密码为初始密码，为了保护您的账户信息，是否修改初始密码？")){
				location.href="stu/updpwd.jsp";
			}
		<% } %>
		}
		<% } %>
</script>
	
	
	<style type="text/css">
body {
	background-color: #efefef;
}
#CalendarMain {
	width: 270px;
	height: 245px;
	border: 1px solid #ccc;
	margin: 0 auto;
	margin-top: 0px;
}
#title {
	width: 100%;
	height: 30px;
	background-color: #6699ff;
}
.selectBtn {
	font-weight: 900;
	font-size: 15px;
	color: #fff;
	cursor: pointer;
	text-decoration: none;
	padding: 7px 10px 6px 10px;
}
.selectBtn:hover {
	background-color: #6699ff;
}
.selectYear {
	float: left;
	margin-left: 50px;
	position: absolute;
}
.selectMonth {
	float: left;
	margin-left: 120px;
	position: absolute;
}
.month {
	float: left;
	position: absolute;
}
.nextMonth {
	float: right;
}
.currentDay {
	float: right;
}
#context {
	background-color: #fff;
	width: 100%;
}
.week {
	width: 100%;
	height: 30px;
}
.week>h3 {
	float: left;
	color: #808080;
	text-align: center;
	margin: 0;
	padding: 0;
	margin-top: 5px;
	font-size: 16px;
}
.dayItem {
	float: left;
}
.lastItem {
	color: #d1c7b7 !important;
}
.item {
	color: #333;
	float: left;
	text-align: center;
	cursor: pointer;
	margin: 0;
	font-family: "微软雅黑";
	font-size: 13px;
}
.item:hover {
	color: #6699ff;
}
.currentItem>a {
	background-color: #6699ff;
	width: 25px;
	line-height: 25px;
	float: left;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	color: #fff;
}
#foots {
	width: 100%;
	height: 35px;
	background-color: #6699ff;
	border-top: 1px solid #ccc;
	margin-top: -1px;
}
#footNow {
	float: left;
	margin: 6px 0 0 5px;
	color: #009ad6;
	font-family: "微软雅黑";
}
#Container {
	overflow: hidden;
	float: left;
}
#center {
	width: 100%;
	overflow: hidden;
}
#centerMain {
	width: 300%;
	margin-left: -100%;
}
#selectYearDiv {
	float: left;
	background-color: #fff;
}
#selectYearDiv>div {
	float: left;
	text-align: center;
	font-family: "微软雅黑";
	font-size: 16px;
	border: 1px solid #ccc;
	margin-left: -1px;
	margin-top: -1px;
	cursor: pointer;
	color: #909090;
}
.currentYearSd, .currentMontSd {
	color: #6699ff !important;
}
#selectMonthDiv {
	float: left;
	background-color: #fff;
}
#selectMonthDiv>div {
	color: #909090;
	float: left;
	text-align: center;
	font-family: "微软雅黑";
	font-size: 16px;
	border: 1px solid #ccc;
	margin-left: -1px;
	margin-top: -1px;
	cursor: pointer;
}
#selectYearDiv>div:hover, #selectMonthDiv>div:hover {
	background-color: #efefef;
}
#centerCalendarMain {
	float: left;
}
</style>
</head>


<body  onload="check();">

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="mdefault.jsp">首页</a></li>
    </ul>
    </div>
    
    
    <div class="mainbox">
    
    <div class="mainleft">
    
    
    <div class="leftinfo">
    <div class="listtitle"><a href="wdoing!list.action" class="more1">更多</a>值班安排</div>
        <table class="tablelist" id="tabProduct">
				<tr>
					<th>
						教师姓名
					</th>
					<th>
						值班日期
					</th>
					<th>
						值班范围
					</th>
					<th>
						班主任
					</th>
					<th>
						总值班
					</th>
				</tr>
				
			</table>
    
    </div>
    <!--leftinfo end-->
    
    
    <div class="leftinfos">
    	
   
    <div class="infoleft">
    
    <div class="listtitle"><a href="msglist.action" class="more1">更多</a>教师通讯录</div>

		 	 <table class="tablelist" id="phon">
    	 	<tr>
    	 		<td>教师姓名</td>
    	 		<td>联系电话</td>
    	 	</tr>
    	 
    	</table>
   
    
    </div>
    
    
    <div class="inforight">
   
    <div class="listtitle">信息统计</div>  
    <ul class="newlist">
    <li ><i>教师数：</i><font id="empa"></font> </li>
    <li ><i>学生数：</i><font id="stua"></font> </li>
    <li> <i>班级数：</i><font id="classa"></font> </li>
    <li><i>课程数：</i><font  id="obja"></font> </li>
    </ul>
    </div>
    
    
    </div>
    
    
    </div>
    <!--mainleft end-->
    
    
    <div class="mainright">
    
    
    <div class="dflist">
    <div class="listtitle"><a href="msglist.action" class="more1">更多</a>最新信息</div>    
    <ul class="newlist" id="msglist">
   	
    </ul> 
     </div>
    <div class="dflist1">
    <div class="listtitle">万年历</div>    
           
           
<div id="Demo">
<div id="CalendarMain">
  <div id="title"> <a class="selectBtn month" href="javascript:" onclick="CalendarHandler.CalculateLastMonthDays();"><</a><a class="selectBtn selectYear" href="javascript:" onClick="CalendarHandler.CreateSelectYear(CalendarHandler.showYearStart);">2014年</a><a class="selectBtn selectMonth" onClick="CalendarHandler.CreateSelectMonth()">6月</a> <a class="selectBtn nextMonth" href="javascript:" onClick="CalendarHandler.CalculateNextMonthDays();">></a><a class="selectBtn currentDay" href="javascript:" onClick="CalendarHandler.CreateCurrentCalendar(0,0,0);">今天</a></div>
  <div id="context">
    <div class="week">
      <h3> 一 </h3>
      <h3> 二 </h3>
      <h3> 三 </h3>
      <h3> 四 </h3>
      <h3> 五 </h3>
      <h3> 六 </h3>
      <h3> 日 </h3>
    </div>
    <div id="center">
      <div id="centerMain">
        <div id="selectYearDiv"></div>
        <div id="centerCalendarMain">
          <div id="Container"></div>
        </div>
        <div id="selectMonthDiv"></div>
      </div>
    </div>
 <!--     <div id="foots"><a id="footNow">19:14:34</a></div>  -->
  </div>
</div>
           
    </div>
    
    

    
    
    </div>
    <!--mainright end-->
    
    
    </div>

<script type="text/javascript">
	setWidth();
	$(window).resize(function(){
		setWidth();	
	});
	function setWidth(){
		var width = ($('.leftinfos').width()-12)/2;
		$('.infoleft,.inforight').width(width);
	}
</script>


<script type="text/javascript" src="http://www.pengyaou.com/jquery-1.4.min.js"></script>
<script type="text/javascript">
		$(document).ready(function(e) {
			CalendarHandler.initialize();
		});

		var CalendarHandler = {
			currentYear: 0,
			currentMonth: 0,
			isRunning: false,
			showYearStart:2009,
			tag:0,
			initialize: function() {
				$calendarItem = this.CreateCalendar(0, 0, 0);
				$("#Container").append($calendarItem);

				$("#context").css("height", $("#CalendarMain").height() - 65 + "px");
				$("#center").css("height", $("#context").height() - 30 + "px");
				$("#selectYearDiv").css("height", $("#context").height() - 30 + "px").css("width", $("#context").width() + "px");
				$("#selectMonthDiv").css("height", $("#context").height() - 30 + "px").css("width", $("#context").width() + "px");
				$("#centerCalendarMain").css("height", $("#context").height() - 30 + "px").css("width", $("#context").width() + "px");

				$calendarItem.css("height", $("#context").height() - 30 + "px"); //.css("visibility","hidden");
				$("#Container").css("height", "0px").css("width", "0px").css("margin-left", $("#context").width() / 2 + "px").css("margin-top", ($("#context").height() - 30) / 2 + "px");
				$("#Container").animate({
					width: $("#context").width() + "px",
					height: ($("#context").height() - 30) * 2 + "px",
					marginLeft: "0px",
					marginTop: "0px"
				}, 300, function() {
					$calendarItem.css("visibility", "visible");
				});
				$(".dayItem").css("width", $("#context").width() + "px");
				var itemPaddintTop = $(".dayItem").height() / 6;
				$(".item").css({
					"width": $(".week").width() / 7 + "px",
					"line-height": itemPaddintTop + "px",
					"height": itemPaddintTop + "px"
				});
				$(".currentItem>a").css("margin-left", ($(".item").width() - 25) / 2 + "px").css("margin-top", ($(".item").height() - 25) / 2 + "px");
				$(".week>h3").css("width", $(".week").width() / 7 + "px");
				this.RunningTime();
			},
			CreateSelectYear: function(showYearStart) {
				CalendarHandler.showYearStart=showYearStart;
				$(".currentDay").show();
				$("#selectYearDiv").children().remove();
				var yearindex = 0;
				for (var i = showYearStart; i < showYearStart+12; i++) {
					yearindex++;
					if(i==showYearStart){
						$last=$("<div>往前</div>");
						$("#selectYearDiv").append($last);
						$last.click(function(){
							CalendarHandler.CreateSelectYear(CalendarHandler.showYearStart-10);
						});
						continue;
					}
					if(i==showYearStart+11){
						$next=$("<div>往后</div>");
						$("#selectYearDiv").append($next);
						$next.click(function(){
							CalendarHandler.CreateSelectYear(CalendarHandler.showYearStart+10);
						});
						continue;
					}
					
					if (i == this.currentYear) {
						$yearItem=$("<div class=\"currentYearSd\" id=\"" + yearindex + "\">" + i + "</div>")
					
					}
					else{
						 $yearItem=$("<div id=\"" + yearindex + "\">" + i + "</div>");
					}
					$("#selectYearDiv").append($yearItem);
					$yearItem.click(function(){
						$calendarItem=CalendarHandler.CreateCalendar(Number($(this).html()),1,1);
						$("#Container").append($calendarItem);
						CalendarHandler.CSS()
					    CalendarHandler.isRunning = true;
					    $($("#Container").find(".dayItem")[0]).animate({
						height: "0px"
					    }, 300, function() {
						$(this).remove();
						CalendarHandler.isRunning = false;
					    });
						$("#centerMain").animate({
						marginLeft: -$("#center").width() + "px"
					}, 500);
					});
					if (yearindex == 1 || yearindex == 5 || yearindex == 9) $("#selectYearDiv").find("#" + yearindex).css("border-left-color", "#fff");
					if (yearindex == 4 || yearindex == 8 || yearindex == 12) $("#selectYearDiv").find("#" + yearindex).css("border-right-color", "#fff");
					
				}
				$("#selectYearDiv>div").css("width", ($("#center").width() - 4) / 4 + "px").css("line-height", ($("#center").height() - 4) / 3 + "px");
				$("#centerMain").animate({
					marginLeft: "0px"
				}, 300);
			},
			CreateSelectMonth: function() {
				$(".currentDay").show();
				$("#selectMonthDiv").children().remove();
				for (var i = 1; i < 13; i++) {
					if (i == this.currentMonth) $monthItem=$("<div class=\"currentMontSd\" id=\"" + i + "\">" + i + "月</div>");
					else  $monthItem=$("<div id=\"" + i + "\">" + i + "月</div>");
					$("#selectMonthDiv").append($monthItem);
					$monthItem.click(function(){
						$calendarItem=CalendarHandler.CreateCalendar(CalendarHandler.currentYear,Number($(this).attr("id")),1);
						$("#Container").append($calendarItem);
						CalendarHandler.CSS()
					    CalendarHandler.isRunning = true;
					    $($("#Container").find(".dayItem")[0]).animate({
						height: "0px"
					    }, 300, function() {
						$(this).remove();
						CalendarHandler.isRunning = false;
					    });
						$("#centerMain").animate({
						marginLeft: -$("#center").width() + "px"
					}, 500);
					});
					if (i == 1 || i == 5 || i == 9) $("#selectMonthDiv").find("#" + i).css("border-left-color", "#fff");
					if (i == 4 || i == 8 || i == 12) $("#selectMonthDiv").find("#" + i).css("border-right-color", "#fff");
				}
				$("#selectMonthDiv>div").css("width", ($("#center").width() - 4) / 4 + "px").css("line-height", ($("#center").height() - 4) / 3 + "px");
				$("#centerMain").animate({
					marginLeft: -$("#center").width() * 2 + "px"
				}, 300);
			},
			IsRuiYear: function(aDate) {
				return (0 == aDate % 4 && (aDate % 100 != 0 || aDate % 400 == 0));
			},
			CalculateWeek: function(y, m, d) {
				var arr = "7123456".split("");
				with(document.all) {
					var vYear = parseInt(y, 10);
					var vMonth = parseInt(m, 10);		
					var vDay = parseInt(d, 10);
				}
				var week =arr[new Date(y,m-1,vDay).getDay()];
				return week;
			},
			CalculateMonthDays: function(m, y) {
				var mDay = 0;
				if (m == 0 || m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12) {
					mDay = 31;
				} else {
					if (m == 2) {
						//判断是否为芮年
						var isRn = this.IsRuiYear(y);
						if (isRn == true) {
							mDay = 29;
						} else {
							mDay = 28;
						}
					} else {
						mDay = 30;
					}
				}
				return mDay;
			},
			CreateCalendar: function(y, m, d) {
				$dayItem = $("<div class=\"dayItem\"></div>");
				//获取当前月份的天数
				var nowDate = new Date();
				if(y==nowDate.getFullYear()&&m==nowDate.getMonth()+1||(y==0&&m==0))
				$(".currentDay").hide();
				var nowYear = y == 0 ? nowDate.getFullYear() : y;
				this.currentYear = nowYear;
				var nowMonth = m == 0 ? nowDate.getMonth() + 1 : m;
				this.currentMonth = nowMonth;
				var nowDay = d == 0 ? nowDate.getDate() : d;
				$(".selectYear").html(nowYear + "年");
				$(".selectMonth").html(nowMonth + "月");
				var nowDaysNub = this.CalculateMonthDays(nowMonth, nowYear);
				//获取当月第一天是星期几
				//var weekDate = new Date(nowYear+"-"+nowMonth+"-"+1);
				//alert(weekDate.getDay());
				var nowWeek = parseInt(this.CalculateWeek(nowYear, nowMonth, 1));
				//nowWeek=weekDate.getDay()==0?7:weekDate.getDay();
				//var nowWeek=weekDate.getDay();
				//获取上个月的天数
				var lastMonthDaysNub = this.CalculateMonthDays((nowMonth - 1), nowYear);

				if (nowWeek != 0) {
					//生成上月剩下的日期
					for (var i = (lastMonthDaysNub - (nowWeek - 1)); i < lastMonthDaysNub; i++) {
						$dayItem.append("<div class=\"item lastItem\"><a>" + (i + 1) + "</a></div>");
					}
				}

				//生成当月的日期
				for (var i = 0; i < nowDaysNub; i++) {
					if (i == (nowDay - 1)) $dayItem.append("<div class=\"item currentItem\"><a>" + (i + 1) + "</a></div>");
					else $dayItem.append("<div class=\"item\"><a>" + (i + 1) + "</a></div>");
				}

				//获取总共已经生成的天数
				var hasCreateDaysNub = nowWeek + nowDaysNub;
				//如果小于42，往下个月推算
				if (hasCreateDaysNub < 42) {
					for (var i = 0; i <= (42 - hasCreateDaysNub); i++) {
						$dayItem.append("<div class=\"item lastItem\"><a>" + (i + 1) + "</a></div>");
					}
				}

				return $dayItem;
			},
			CSS: function() {
				var itemPaddintTop = $(".dayItem").height() / 6;
				$(".item").css({
					"width": $(".week").width() / 7 + "px",
					"line-height": itemPaddintTop + "px",
					"height": itemPaddintTop + "px"
				});
				$(".currentItem>a").css("margin-left", ($(".item").width() - 25) / 2 + "px").css("margin-top", ($(".item").height() - 25) / 2 + "px");
			},
			CalculateNextMonthDays: function() {
				if (this.isRunning == false) {
					$(".currentDay").show();
					var m = this.currentMonth == 12 ? 1 : this.currentMonth + 1;
					var y = this.currentMonth == 12 ? (this.currentYear + 1) : this.currentYear;
					var d = 0;
					var nowDate = new Date();
					if (y == nowDate.getFullYear() && m == nowDate.getMonth() + 1) d = nowDate.getDate();
					else d = 1;
					$calendarItem = this.CreateCalendar(y, m, d);
					$("#Container").append($calendarItem);

					this.CSS();
					this.isRunning = true;
					$($("#Container").find(".dayItem")[0]).animate({
						height: "0px"
					}, 300, function() {
						$(this).remove();
						CalendarHandler.isRunning = false;
					});
				}
			},
			CalculateLastMonthDays: function() {
				if (this.isRunning == false) {
					$(".currentDay").show();
					var nowDate = new Date();					
					var m = this.currentMonth == 1 ? 12 : this.currentMonth - 1;
					var y = this.currentMonth == 1 ? (this.currentYear - 1) : this.currentYear;
					var d = 0;
					
					if (y == nowDate.getFullYear() && m == nowDate.getMonth() + 1) d = nowDate.getDate();
					else d = 1;
					$calendarItem = this.CreateCalendar(y, m, d);
					$("#Container").append($calendarItem);
					var itemPaddintTop = $(".dayItem").height() / 6;
					this.CSS();
					this.isRunning = true;
					$($("#Container").find(".dayItem")[0]).animate({
						height: "0px"
					}, 300, function() {
						$(this).remove();
						CalendarHandler.isRunning = false;
					});
				}
			},
			CreateCurrentCalendar: function() {
				if (this.isRunning == false) {
					$(".currentDay").hide();
					$calendarItem = this.CreateCalendar(0, 0, 0);
					$("#Container").append($calendarItem);
					this.isRunning = true;
					$($("#Container").find(".dayItem")[0]).animate({
						height: "0px"
					}, 300, function() {
						$(this).remove();
						CalendarHandler.isRunning = false;
					});
					this.CSS();
					$("#centerMain").animate({
						marginLeft: -$("#center").width() + "px"
					}, 500);
				}
			},
			RunningTime: function() {
				var mTiming = setInterval(function() {
					var nowDate = new Date();
					var h=nowDate.getHours()<10?"0"+nowDate.getHours():nowDate.getHours();
					var m=nowDate.getMinutes()<10?"0"+nowDate.getMinutes():nowDate.getMinutes();
					var s=nowDate.getSeconds()<10?"0"+nowDate.getSeconds():nowDate.getSeconds();
					var nowTime = h + ":" + m + ":" + s;
					$("#footNow").html(nowTime);
				}, 1000);

			}
		}
		</script>

</body>

</html>
