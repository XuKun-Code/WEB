<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>钱包</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="NewFile1.css">
<form action="Addmoney.jsp" method="post" onsubmit="return check(this);">
<table align="center" width="450">
<tr>
<td align="center" colspan="2">
<h2>我的兜里儿还有多少钱</h2>
<hr>
</td>
</tr>



<tr>
<td align="right">现金余额：</td>
<td><input type="text" name="xianjin"/></td>
</tr>

<tr>
<td align="right">支付宝余额：</td>
<td><input type="text" name="zhifubao"/></td>
</tr>

<tr>
<td align="right">银行卡余额：</td>
<td><input type="text" name="yinhangka"/></td>
</tr>

<tr>
<td colspan="2" align="center"><input type="submit" value="添加一笔余额"></td>

</tr>

</table>
</form>
</body>
</html>