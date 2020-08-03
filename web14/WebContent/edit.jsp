<%@page import="com.bit.model.Emp03Dto"%>
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
	$(document).ready(function() {
		$('#form>div>button').eq(2).click(function() {

			window.history.back();

			return false;
		});

	});
</script>

<style rel="stylesheet" type="text/css">
h2 {
	text-align: center;
}

table {
	width: 300px;
	border: 1px solid;
	margin: auto;
}

tr {
	border-bottom: 1px solid;
}

#detail_form ~a {
	display: block;
	width: 50px;
	height: 30px;
	color: black;
	border: 1px solid gray;
	text-align: center;
	text-decoration: none;
	line-height: 30px;
	margin: auto;
	float: left;
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
				Emp03Dto bean = (Emp03Dto) request.getAttribute("dto");
			%>

			<jsp:useBean id="dto" class="com.bit.model.Emp03Dto" scope="request"></jsp:useBean>

			<h2>상세 페이지</h2>

			<form id="detail_form" action="edit.bit" method="post">



				<div>
					<label>사번</label> <input type="text" id="sabun" name="sabun"
						readonly value="<%=bean.getSabun()%>" />

				</div>

				<div>
					<label>이름</label> <input type="text" id="name" name="name"
						value="<%=bean.getName()%>" />
				</div>

				<div>
					<label>제목</label> <input type="text" id="sub" name="sub"
						value="<%=bean.getSub()%>" />
				</div>

				<div>
					<label>날짜</label> <input type="text" id="nalja" name="nalja"
						value="<%=bean.getNalja()%>" />
				</div>

				<div>
					<label>페이</label> <input type="text" id="pay" name="pay"
						value="<%=bean.getPay()%>" />
				</div>


				<button type="submit">수정</button>
				<button type="reset">리셋</button>
				<button type="button">취소</button>

			</form>







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