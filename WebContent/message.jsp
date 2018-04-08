<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="zhuce.UserDao"%>
<%@ page import="java.util.Date"%>
<%@ page import="zhuce.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
String info =(String)request.getAttribute("info");
if(info != null){
	out.println(info);
}

 User user=(User)session.getAttribute("user");
if(user!=null){
%>


<tr>
<td align="center" colspan="2">
<span style="font-weight:bold;font-size:18px;"></span>

</td>
</tr>


<%
}else{

	out.println("请确认两次密码是否一致");

}
%>



</body>
</html>