<%@ page language="java"  import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户登录</title>
</head>
<body>
<%
String username ="";
String password ="";
request.setCharacterEncoding("utf-8");
username = request.getParameter("username");
password =request.getParameter("password");
if("admin".equals(username)&&"admin".equals(password)){
	request.getRequestDispatcher("NewFile1.html").forward(request, response);
}
else
{
response.sendRedirect("login_fail.jsp");	
}
%>

</body>
</html>