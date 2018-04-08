<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加账单</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="NewFile1.css">
<form action="Addshuju.jsp" method="post" onsubmit="return zhuye(this);">	
<table align="center" width="450" >
<tr>
<td align="center" colspan="2">
<h2>添加账单</h2>
<hr>
</td>
</tr>

<tr>
<td align="right">类型：</td>
<td>
<input type="radio" name="style" value="餐饮" checked="checked">餐饮
<input type="radio" name="style" value="水果">水果
<input type="radio" name="style" value="购物">购物
<input type="radio" name="style" value="充值">充值
<input type="radio" name="style" value="娱乐">娱乐
<input type="radio" name="style" value="交通">交通
<input type="radio" name="style" value="其他">其他
</td>
</tr>

<tr>
<td align="right">支付：</td>
<td>
<input type="radio" name="zhifu" value="现金" checked="checked">现金
<input type="radio" name="zhifu" value="支付宝">支付宝
<input type="radio" name="zhifu" value="银行卡">银行卡
</td>
</tr>


<tr>
<td align="right">金额：</td>
<td><input type="text" name="money" /></td>
</tr>







<tr>
<td align="right">备注：</td>
<td><input type="text" name="remark" /></td>
</tr>






<tr>
<td colspan="2" align=""><input type="submit" value="记一笔"></td>

</tr>
</table>
</form>	
</body>
</html>