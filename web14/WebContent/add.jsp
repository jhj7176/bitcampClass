<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%
String errMsg = (String)request.getAttribute("err");

%>
<link rel="stylesheet" type="text/css" href="css/960.css" />
<link rel="stylesheet" type="text/css" href="css/index.css" />
<script type="text/javascript" src="jquery/jquery-1.12.4.js"></script>
<script type="text/javascript">
	
	$(function(){
		
		if(<%=request.getAttribute("err") %>){
			$('#err').show();
		}else{
			$('#err').hide();
		}
		
		
		$('#err>span:first-child').click(function(){
			$('#err').slideUp();
		});
		$('#form>div>button').eq(2).click(function(){
			
			window.history.back();
		});
		
		 ///$(this).find('span').css('display','none'); 
		$('#form').submit(function(){
			if($('#sabun').val().trim()==''){
				///$('#sabun').next().css('display', 'inline');
				$('#err').slideDown();
				$('#err>span').last().text('사번을 입력하세요.');
				$('#sabun').focus();
				
				
				
				return false;
			}else if($('#name').val().trim()==''){
				//$('#name').next().css('display', 'inline');
				$('#err').slideDown();
				$('#err>span').last().text('이름을 입력하세요.');
				$('#name').focus();
				return false;
				
			}else if($('#sub').val().trim()==''){
				$('#err').slideDown();
				$('#err>span').last().text('제목을 입력하세요.');
				$('#sub').focus();
				//$('#sub').next().css('display', 'inline');
				$('#sub').val('제목없음');		
			}else if($('#pay').val().trim()==''){
				$('#err>span').last().text('숫자를 입력하세요.');
				$('#pay').focus();
				$('#err').slideDown();
				//$('#pay').next().css('display', 'inline');
				return false;
			}
		
		});
		
	});
	
</script>

<style rel="stylesheet" type="text/css">
#formField {
	width: 400px;
	display: block;
	margin: auto;
}

#formField>form {
	width: 280px;
	display: block;
	margin: auto;
}

#form>div>label {
	text-align:center;
	clear: both;
}

#form>div>input {
	float: right;
	width: 200px;
}

#form>div {
 	border: 1px solid white;
	display: block;
}

#form>div>button:first-child {
	margin-left: 65px;
}

#err{
	margin:auto;
	width:90%;
	border-bottom-left-radius:20px;
	border-bottom-right-radius:20px;
	background-color:red;
	height:30px;
}
#err>span:first-child{
	float:right;
	border:1px solid white;
	margin:5px;
	width:20px;
	height:20px;
	color:white;
	text-align:center;
	line-height:20px;
	cursor:pointer;
	margin-right:30px;
}

#err>span:last-child{
	margin-left:30px;
	font-size:140%;
	color:white;
	clear:both;
}
</style>
</head>
<body>

<div id="err">
<span>X</span>
<span>빈값을 허용하지 않습니다.</span>

</div>

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



			<fieldset id="formField">
				<legend>
					<strong>입력페이지</strong>
				</legend>
				<form action="add.bit" method="post" id="form">

					<div>
						<label for="sabun">sabun</label> <input type="text" id="sabun"
							name="sabun" /> <span></span>
					</div>
					<div>
						<label for="name">name</label> <input type="text" id="name"
							name="name" /><span></span>
					</div>
					<div>
						<label for="sub">sub</label> <input type="text" id="sub"
							name="sub" />
					</div>

					<div>
						<label for="pay">pay</label> <input type="text" id="pay"
							name="pay" /><span></span>
					</div>

					<div>
						<button type="submit">입력</button>
						<button type="reset">리셋</button>
						<button type="button">취소</button>

					</div>



				</form>
			</fieldset>
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