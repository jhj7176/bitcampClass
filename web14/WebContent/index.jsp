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
	
	$(document).ready(function(){	
		$('<img/>').attr('src','img/samsek4.jpg').insertAfter('#content>div>img').after($('<img/>').attr('src','img/samsek6.jpg'));
		
		
		
	});
	
	
	
	
</script>

<style rel="stylesheet" type="text/css">

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
				<li><a href="login.bit">LOGIN</a></li>
			</ul>

		</div>

		<div class="clear"></div>
		<div id="content" class="grid_12">
<div>
			<img src="img/angry.png" width="300"/>

</div>


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