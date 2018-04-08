<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <%@ page import="jizhang.qianbao" %>
       <%@ page import="zhuce.User" %>
    <%@ page import="java.sql.*" %>  
    <%@ page import="java.util.Date"%>
      <%@ page import="jizhang.jiazhang" %>
  <%@ page import="jizhang.jihua" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>


<%request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="jihua" class="jizhang.jihua"></jsp:useBean>
<jsp:setProperty property="*" name="jihua"/>



<%
try{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/test";
String username="root";
String password="admin";
Connection conn =DriverManager.getConnection(url,username,password);
String sql="insert into test4(xfjihua,time,xfmoney,shifou,xfremark,username)values(?,?,?,?,?,?)";
PreparedStatement ps=conn.prepareStatement(sql);




//double jzmoney=(double)session.getAttribute("jzmoney");
//System.out.println(jzmoney);

//double symoney=allMoney-jzmoney;



//ps.setString(1,jizhang.getTime());
ps.setString(1,jihua.getXfjihua());
ps.setString(2,jihua.getTime());
ps.setDouble(3,jihua.getXfmoney());
ps.setString(4,jihua.getShifou());
ps.setString(5,jihua.getXfremark());
ps.setObject(6,session.getAttribute("user"));




int row=ps.executeUpdate();

if(row>0 ){
	  out.print("添加成功");	
	  response.sendRedirect("FindjhServlet");
	}
ps.close();
conn.close();
}
catch(Exception e){
	out.print("添加失败");
	e.printStackTrace();
}

%>



</body>
</html>