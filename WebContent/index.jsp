<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>    
    
<%@ page import="java.util.Date" %> 
<%@ page import="java.text.*" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="description" content="记账">
 <meta name="keywords" content="简单记账的登录界面">
	<title>简单记账的登录界面</title>
<link rel="stylesheet" type="text/css" href="Denglu_style.css"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<form action="LoginServlet"  method="post" onSubmit="return index(this)">
<div id="head">
	<h1>简单记账</h1>
</div>
<div id="wrapper">
	<div class="main">
		<img src="888.jpg" alt="记账标志">
	</div>
	<div class="side">
	<h1>欢迎登录</h1>
		<div class="username"><label>用户</label><input type="text" name="username"></div>
		<div class="password"><label>密码</label><input type="password" name="password"></div>
		<div class="Zhuce"> <a href="zhuce.jsp">注册</a></div>

		<div class="DengLu"><input type="submit" name="" value="登录" style="background-color: rgb(35,153,251);width: 67px;height: 34px;color:white;border:1px solid #fff;"></div>


      
	</div>
	<div class="clear"></div>
</div>
</form>

</body>
</html>