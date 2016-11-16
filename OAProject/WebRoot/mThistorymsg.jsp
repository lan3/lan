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
		<title>教师历史公告</title>
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
				<li>
					<a href="msg.jsp">首页</a>
				</li>
				<li>
					<a href="#">白天巡查情况</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">

			<table class="imgtable">

				<thead>
					<tr>
						<th width="60px;">
						编号
						</th>
						<th width="250px;">
							标题
						</th>
						<th width="550px;" >
							内容
						</th>

						<th width="150px;">
							发布人
						</th>
						<th >
							发布时间
						</th>
					</tr>
				</thead>

				<tbody>

					<tr>
						<td class="imgtd">
							1
						</td>
						<td  >
							端午放假通知
						</td>
						<td>
							后台界面
							<p>
								ID: 82122
							</p>
						</td>
						<td>
							admin
						</td>
						<td>
							<p></p>
						</td>

					</tr>

					<tr>
						<td class="imgtd">
						2
						</td>
						<td>
							<a href="#">一套简约形状图标UI下载</a>
						</td>
						<td>
							图标设计
							<p>
								ID: 82122
							</p>
						</td>
						<td>
							开放浏览
						</td>
						<td>
							<i>未审核</i>
						</td>
					</tr>

					
				</tbody>

			</table>


			<div class="pagin">
				<div class="message">
					共
					<i class="blue">1256</i>条记录，当前显示第&nbsp;
					<i class="blue">2&nbsp;</i>页
				</div>
				<ul class="paginList">
					<li class="paginItem">
						<a href="javascript:;"><span class="pagepre"></span>
						</a>
					</li>
					<li class="paginItem">
						<a href="javascript:;">1</a>
					</li>
					<li class="paginItem current">
						<a href="javascript:;">2</a>
					</li>
					<li class="paginItem">
						<a href="javascript:;">3</a>
					</li>
					<li class="paginItem">
						<a href="javascript:;">4</a>
					</li>
					<li class="paginItem">
						<a href="javascript:;">5</a>
					</li>
					<li class="paginItem more">
						<a href="javascript:;">...</a>
					</li>
					<li class="paginItem">
						<a href="javascript:;">10</a>
					</li>
					<li class="paginItem">
						<a href="javascript:;"><span class="pagenxt"></span>
						</a>
					</li>
				</ul>
			</div>


			<div class="tip">
				<div class="tiptop">
					<span>提示信息</span><a></a>
				</div>

				<div class="tipinfo">
					<span><img src="images/ticon.png" />
					</span>
					<div class="tipright">
						<p>
							是否确认对信息的修改 ？
						</p>
						<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
					</div>
				</div>

				<div class="tipbtn">
					<input name="" type="button" class="sure" value="确定" />
					&nbsp;
					<input name="" type="button" class="cancel" value="取消" />
				</div>

			</div>




		</div>

		<div class="tip">
			<div class="tiptop">
				<span>提示信息</span><a></a>
			</div>

			<div class="tipinfo">
				<span><img src="images/ticon.png" />
				</span>
				<div class="tipright">
					<p>
						是否确认对信息的修改 ？
					</p>
					<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
				</div>
			</div>

			<div class="tipbtn">
				<input name="" type="button" class="sure" value="确定" />
				&nbsp;
				<input name="" type="button" class="cancel" value="取消" />
			</div>

		</div>

		<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>

	</body>

</html>
