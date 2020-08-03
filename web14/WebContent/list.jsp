<%@page import="com.bit.model.Emp03Dto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/960.css" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<script type="text/javascript" src="jquery/jquery-1.12.4.js"></script>
<script type="text/javascript">

	$(function() {
		$('#emp_table>tbody tr').first().siblings().click(function() {
			var sabun = $(this).children().first().text();
			location.href='detail.bit?idx=' + sabun;
		});

	});//ready
</script>

<style rel="stylesheet" type="text/css">
#content>h2 {
	text-align: center;
}

#emp_table {
	margin: auto;
	border-collapse: collapse;
	margin-bottom: 20px;
}

#emp_table tr {
	text-align: center;
}

#emp_table tr{
	cursor:pointer;
}

#emp_table td {
	border-bottom: 1px solid gray;
}

#emp_table th {
	width: 150px;
	border: 1px solid;
	padding: 1px;
}

#emp_table+a {
	display: block;
	width: 50px;
	height: 30px;
	color: black;
	border: 1px solid gray;
	text-align: center;
	text-decoration: none;
	line-height: 30px;
	margin: auto;
	background-image: linear-gradient(white, litegray, gray);
}
</style>
</head>
<body>

	<div class="container_12">
		<div id="header" class="grid_12">
			<h1>비트교육센터</h1>
		</div>
		<div class="clear"></div>
		<div id=menu class="grid_12">
			<ul>
				<li><a href="index.bit">HOME</a></li>
				<li><a href="list.bit">E M P</a></li>
				<li><a href="#">DEPT</a></li>
				<li><a href="#">LOGIN</a></li>
			</ul>

		</div>

		<div class="clear"></div>
		<div id="content" class="grid_12">

			<h2>EMP List page</h2>
			<table id="emp_table">
				<thead>
					<tr>
						<th>사번</th>
						<th>제목</th>
						<th>이름</th>
					</tr>
				</thead>
				<tbody>
					<%
						ArrayList<Emp03Dto> list = (ArrayList<Emp03Dto>) request.getAttribute("alist");

					for (int i = 0; i < list.size(); i++) {
						Emp03Dto bean = list.get(i);
					%>
					<tr>
						<td><%=bean.getSabun()%></td>
						<td><%=bean.getSub()%></td>
						<td><%=bean.getName()%></td>

					</tr>
					<%
						}
					%>
				</tbody>
			</table>

			<a href="add.jsp">입력</a>


		</div>
		<div class="clear"></div>


		<div id="footer" class="grid_12">

			<div>
				<img alt="" src="img/footer-logo.png">
				<div>
					<address>비트캠프 서울시 서초구 강남대로 459</address>
					(주)비트컴퓨터 서초본원<br /> Copyright &copy; 비트캠프 All rights reserved.
				</div>
			</div>




		</div>
		<div class="clear"></div>


	</div>

</body>
</html>