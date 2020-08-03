<%@page import="com.bit.model.Emp03Dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<jsp:useBean id="dto" class="com.bit.model.Emp03Dto" scope="request"></jsp:useBean>
<link rel="stylesheet" type="text/css" href="css/960.css" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<script type="text/javascript" src="jquery/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {

				
				

					$('table~a').last().click(function(){
						history.back();
						return false;
					});

					$('table~a').eq(1).click(function(){
						
						$.post('delete.bit','idx='+<%=dto.getSabun()%>,function(){
							
						});
						return false;
						
					});
				
				

			});
</script>

<style rel="stylesheet" type="text/css">

h2{
	text-align:center;
}
table{
	width:300px;
	border:1px solid;
	margin:auto;
}
tr{
	border-bottom:1px solid;
}
#detail_table~a {
	display: block;
	width: 50px;
	height: 30px;
	color: black;
	border: 1px solid gray;
	text-align: center;
	text-decoration: none;
	line-height: 30px;
	margin: auto;
	
	float:left;
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


			<%
				Emp03Dto bean =(Emp03Dto) request.getAttribute("dto");
			%>
			
		
			
			<h2>상세 페이지</h2>

			<table id="detail_table">
		
				<tbody>

					<tr>
						<th>사번</th>
						<td><%=bean.getSabun() %></td>
						<%-- <jsp:getProperty property="sabun" name="dto"/> --%>
					</tr>

					<tr>
						<th>이름</th>
						<td><%=bean.getName() %></td>
				<%-- 		<jsp:getProperty property="name" name="dto"/> --%>
					</tr>

					<tr>
						<th>제목</th>
						<td><%=bean.getSub() %></td>
					<%-- 	<jsp:getProperty property="sub" name="dto"/> --%>
					</tr>

					<tr>
						<th>날짜</th>
						<td><%=bean.getNalja() %></td>
					<%-- 	<jsp:getProperty property="nalja" name="dto"/> --%>
					</tr>

					<tr>
						<th>페이</th>
						<td><%=bean.getPay() %></td>
						<%-- <jsp:getProperty property="pay" name="dto"/> --%>
					</tr>

				</tbody>


			</table>
						<a id = "edit" href="edit.bit?idx=<%=dto.getSabun()%>">수정</a>
						<a href="del">삭제</a>
						<a href="#">취소</a>







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