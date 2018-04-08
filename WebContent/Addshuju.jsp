<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="jizhang.jiazhang" %>
       <%@ page import="zhuce.User" %>
    <%@ page import="java.sql.*" %>  
    <%@ page import="java.util.*"%>
      <%@ page import="jizhang.qianbao" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<title>添加账单</title>
</head>
<body>

<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="jizhang" class="jizhang.jiazhang"></jsp:useBean>
<jsp:setProperty property="*" name="jizhang"/>



<%
try{

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/test";
String username="root";
String password="admin";
Connection conn =DriverManager.getConnection(url,username,password);
String user = (String) session.getAttribute("user");


String sql="insert into test2(style,zhifu,money,remark,username)values(?,?,?,?,?)";
PreparedStatement ps=conn.prepareStatement(sql);
//ps.setString(1,jizhang.getTime());
ps.setString(1,jizhang.getStyle());
ps.setString(2,jizhang.getZhifu());
ps.setDouble(3,jizhang.getMoney());
ps.setString(4,jizhang.getRemark());
ps.setObject(5,session.getAttribute("user"));

String zdmoney1=request.getParameter("jizhang.getMoney()");

session.setAttribute("jzmoney",jizhang.getMoney() );



double jzmoney=(double)session.getAttribute("jzmoney");

System.out.println(jzmoney);




int row=ps.executeUpdate();
if(row>0){
	  out.print("添加成功");	
	  response.sendRedirect("FindServlet");
	}
ps.close();
conn.close();
}
catch(Exception e){
	out.print("添加失败");
	e.printStackTrace();
}
%>
<a href="tianjia.jsp"></a>


</body>
</html>