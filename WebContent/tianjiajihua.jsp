<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加消费计划</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="NewFile1.css">
<form action="Addjihua.jsp" method="post" onsubmit="return zhuye(this);">	
<table align="center" width="450" >
<tr>
<td align="center" colspan="2">
<h2>添加消费计划</h2>
<hr>
</td>
</tr>

<tr>
<td align="right">我的消费计划：</td>

<td><input type="text" name="xfjihua" /></td>

</tr>

<tr>
<td align="right">准备实现时间：</td>
<td>
<input type="text" name="time" />格式：--.--.--
</td>
</tr>


<tr>
<td align="right">计划需要金额：</td>
<td><input type="text" name="xfmoney" /></td>
</tr>




<tr>
<td align="right"></td>
<td>

<input type="hidden" name="shifou" value="否" checked="checked">

</td>
</tr>






<tr>
<td align="right">备注：</td>
<td><input type="text" name="xfremark" /></td>
</tr>






<tr>
<td colspan="2" align="center"><input type="submit" value="添加计划"></td>

</tr>
</table>
</form>	
</body>
</html>