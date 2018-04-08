<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="zhuce.User"%>
<%@ page import="jizhang.qianbao"%>
<%@ page import="java.util.List"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="记账">
<meta name="keywords" content="记账，简单记账">
<title>简单记账</title>
<link rel="stylesheet" type="text/css" href="NewFile.css">

</head>
<body>
	<div id="head">
		<div class="logo_title">
			<h1>简单记账</h1>
			<h2>记账原来也可以这么简单</h2>
		</div>
		<div class="navi">
			<ul>

				<%=session.getAttribute("user")%>欢迎你！

				<li><a href="index.jsp">退出</a></li>

			</ul>
		</div>
		<div class="clear"></div>
	</div>
	<div class="ss">

		<ul>
			<li><a href="FindServlet">我的账单</a> <a href="tianjia.jsp">添加账单</a>

				<a href="FindqbServlet">我的余额记录</a> <a href="qianbao.jsp">统计今日余额</a>
						<a href="FindjhServlet">我的消费计划</a> <a href="tianjiajihua.jsp">添加消费计划</a>
				</li>
		</ul>
	</div>

	
		<div id="wrapper">
			<div class="main">
				<table>

					<tr align="center">
						<td><b>时间</b></td>
						<td><b>总余额</b></td>
						<td><b>现金余额</b></td>
						<td><b>支付宝余额</b></td>
						<td><b>银行卡余额</b></td>
						<td><b>依次修改现金、支付宝、银行卡余额</b></td>
						<td><b>删除</b></td>
					</tr>

					<%
						List<qianbao> list = (List<qianbao>) request.getAttribute("list");
						if (list == null || list.size() < 1) {
							out.print("你还没有统计余额，快统计吧！");
						} else{
							for (qianbao qb : list) {
		//	double jzmoney=(double)session.getAttribute("jzmoney");
					%>
					<tr align="center">
                     <td><%=qb.getTime() %></td>
						<td><%=qb.getAllmoney()%></td>	
						<td><%=qb.getXianjin()%></td>
						<td><%=qb.getZhifubao()%></td>
						<td><%=qb.getYinhangka()%></td>
						<td>

							<form action="UpdateqbServlet" method="post" onsubmit="return check(UpdateqbServlet)">
								<input type="hidden" name="number" value="<%=qb.getNumber()%>">
								<input type="text" name="xianjin" size="8"> 
								<input type="text" name="zhifubao" size="8"> 
								<input type="text" name="yinhangka" size="8"> 
								<input type="submit" value="修改余额">

							</form>
						</td>

						<td>
						<a href="DeleteqbServlet?number=<%=qb.getNumber()%>">X</a>
						</td>

					</tr>


					<%
						}
							
							
						}
					%>

				</table>
			</div>


			</head>
			<div class="clear"></div>
		</div>

	<div id="footer">
		<div class="site_about">简单记账，喜欢记账</div>
		<div class="site_link">
			<ul>
				<li><a href="gywm.html">关于我们</a></li>
				<li><a href="lxwm.html">联系我们</a></li>
				<li><a href="shiyong.html">使用条款</a></li>
				<li><a href="yijian.jsp">意见反馈</a></li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
</body>
</html>