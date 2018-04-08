<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="zhuce.User" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册界面</title>
	<link rel="stylesheet" type="text/css" href="NewFile1.css"> 
</head>
<body>

<form action="RegServlet" method="post"onsubmit="return zhuce(this);">
<table align="center" width="450" >
<tr>
<td align="center" colspan="2">
<h2>欢迎注册</h2>
<hr>
</td>
</tr>

<tr>
<td align="right">用户名：</td>
<td><input type="text" name="username"/></td>
</tr>
<tr>
<td align="right">密码：</td>
<td><input type="password" name="password"/></td>
</tr>
<tr>
<td align="right">确认密码：</td>
<td><input type="password" name="repassword"/></td>
</tr>

<tr>
<td align="right">姓名：</td>
<td><input type="text" name="name"/></td>
</tr>
<tr>
<td align="right">性别：</td>
<td>
<input type="radio" name="sex" value="男" checked="checked">男
<input type="radio" name="sex" value="女">女
</td>
</tr>

<tr>
<td align="right">电话：</td>
<td><input type="text" name="tel"/></td>
</tr>

<tr>
<td align="right">QQ：</td>
<td><input type="text" name="qq"/></td>
</tr>


<tr>
<td colspan="2" align="center"><input type="submit" value="注册"></td>
</tr>
</table>
</form>
</body>
</html>