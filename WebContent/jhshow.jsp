<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="zhuce.User"%>
<%@ page import="jizhang.qianbao"%>
<%@ page import="jizhang.jihua"%>
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
						<td><b>计划实现时间</b></td>
						<td><b>消费计划</b></td>
						<td><b>需要金额</b></td>
						<td><b>计划实现状态</b></td>
						<td><b>备注</b></td>
						<td><b>是否完成</b></td>
						<td><b>删除</b></td>
					</tr>

					<%
						List<jihua> list = (List<jihua>) request.getAttribute("list");
						if (list == null || list.size() < 1) {
							out.print("你还没有添加消费计划，快添加吧！");
						} else{
							for (jihua jh : list) {
		//	double jzmoney=(double)session.getAttribute("jzmoney");
					%>
					<tr align="center">
					
					
                     <td><%=jh.getTime() %></td>
					        <td><%=jh.getXfjihua() %></td>
				        <td><%=jh.getXfmoney() %></td>        
				        <td><%=jh.getShifou() %></td>
					        <td><%=jh.getXfremark() %></td>
						<td>

							<form action="UpdatejhServlet" method="post" onsubmit="return check(UpdatejhServlet)">
								<input type="hidden" name="number" value="<%=jh.getNumber()%>">
							
							<input type="text" name="shifou" value="是" size="2" checked="checked">

								<input type="submit" value="确认">

							</form>
						</td>

						<td>
						<a href="DeletejhServlet?number=<%=jh.getNumber()%>">X</a>
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