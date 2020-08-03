<%@page import="com.bit.emp.model.Dept04Dto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../template/head.jspf"%>

<style rel="stylesheet" type="text/css">
#div_table {
	display: block;
	margin: auto;
}

#div_table>h2 {
	text-align: center;
}

#dept_table {
	width: 400px;
	border-collapse: collapse;
	border: 1px solid;
	margin: auto;
}

#dept_table tr {
	border-bottom: 1px solid;
	text-align: center;
}

#div_table>h2+a {
	diplay: inline-block;
	width: 50px;
	height: 30px;
	text-align: center;
	line-height: 30px;
	border: 1px solid;
	cursor: pointer;
}
</style>
<script type="text/javascript" src="jquery/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(function() {

	});//ready
</script>
</head>
<body>

	<%@include file="template/header.jspf"%>

	<%@include file="template/menu.jspf"%>


	<div id="content" class="grid_16">
		<!--  content start-->

		<div class=gird_12 id="div_table">

			<h2>입력페이지</h2>
			<form method="post" action="../add.bit">
			
			<div>
			<label for="id">id</label>
			<input type="text" name="id" id="id"/>
			</div>
			<div>
			<label for="dname">dname</label>
			<input type="text" name="dname" id="dname"/>
			</div>
			<div>
			<label for="loc">loc</label>
			<input type="text" name="loc" id="loc"/>
			</div>
			
			<div>
			<button type="submit">입력</button>
			<button type="reset">리셋</button>
			<button type="button" onclick="history.back();">뒤로</button>
			
			</div>
			
			
			
			</form>

		</div>


		<!--  content end-->
	</div>





	<%@include file="template/footer.jspf"%>


</body>
</html>