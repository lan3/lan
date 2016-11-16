<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>教员月度反馈表</title>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    

  </head>
  
  <body>
  <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
  	<form action="edufacusave" method="post">
   	<table border="1" bordercolor="red" style="text-align:center">
		<tr>
		<td>教员:
				<input name="facu.ename" type="text" value="${ename }" readonly="false" border="0"/>
			</td>
			<td colspan="3">班级:
				<input name="facu.fclass" type="text" value="${cname }" readonly="false" border="0"/>
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
			<td><input type="radio" name="facu.w1" value="5"></td>
			<td><input type="radio" name="facu.w1" value="4"></td>
			<td><input type="radio" name="facu.w1" value="3"></td>
			<td><input type="radio" name="facu.w1" value="2"></td>
			<td><input type="radio" name="facu.w1" value="1"></td>
		</tr>
		<tr>
			<td colspan="4">案例丰富实用，讲解与实战演示结合</td>
			<td><input type="radio" name="facu.w2" value="5"></td>
			<td><input type="radio" name="facu.w2" value="4"></td>
			<td><input type="radio" name="facu.w2" value="3"></td>
			<td><input type="radio" name="facu.w2" value="2"></td>
			<td><input type="radio" name="facu.w2" value="1"></td>
		</tr>
		<tr>
			<td colspan="4">课堂气氛活跃，语言生动活泼</td>
			<td><input type="radio" name="facu.w3" value="5"></td>
			<td><input type="radio" name="facu.w3" value="4"></td>
			<td><input type="radio" name="facu.w3" value="3"></td>
			<td><input type="radio" name="facu.w3" value="2"></td>
			<td><input type="radio" name="facu.w3" value="1"></td>
		</tr>
		<tr>
			<td colspan="4">技术实力强，知识面广，经验丰富</td>
			<td><input type="radio" name="facu.w4" value="5"></td>
			<td><input type="radio" name="facu.w4" value="4"></td>
			<td><input type="radio" name="facu.w4" value="3"></td>
			<td><input type="radio" name="facu.w4" value="2"></td>
			<td><input type="radio" name="facu.w4" value="1"></td>
		</tr>
		<tr>
			<td colspan="4">辅导学院耐心细致，解决问题能力强</td>
			<td><input type="radio" name="facu.w5" value="5"></td>
			<td><input type="radio" name="facu.w5" value="4"></td>
			<td><input type="radio" name="facu.w5" value="3"></td>
			<td><input type="radio" name="facu.w5" value="2"></td>
			<td><input type="radio" name="facu.w5" value="1"></td>
		</tr>
		<tr>
			<td colspan="4">及时讲解练习中普遍存在的问题</td>
			<td><input type="radio" name="facu.w6" value="5"></td>
			<td><input type="radio" name="facu.w6" value="4"></td>
			<td><input type="radio" name="facu.w6" value="3"></td>
			<td><input type="radio" name="facu.w6" value="2"></td>
			<td><input type="radio" name="facu.w6" value="1"></td>
		</tr>
		<tr>
			<td colspan="4">课堂纪律管理是否严格</td>
			<td><input type="radio" name="facu.w7" value="5"></td>
			<td><input type="radio" name="facu.w7" value="4"></td>
			<td><input type="radio" name="facu.w7" value="3"></td>
			<td><input type="radio" name="facu.w7" value="2"></td>
			<td><input type="radio" name="facu.w7" value="1"></td>
		</tr>
		<tr>
			<td colspan="4">作业检查是否认真，到位</td>
		<td><input type="radio" name="facu.w8" value="5"></td>
			<td><input type="radio" name="facu.w8" value="4"></td>
			<td><input type="radio" name="facu.w8" value="3"></td>
			<td><input type="radio" name="facu.w8" value="2"></td>
			<td><input type="radio" name="facu.w8" value="1"></td>
		</tr>
		<tr>
			<td colspan="2">问题与建议</td>
			<td colspan="7"><textarea  cols="45" name="facu.fpro"></textarea></td>
		<tr>
	</table>
		<input type="submit" value="提交">
	</form>
  </body>
</html>