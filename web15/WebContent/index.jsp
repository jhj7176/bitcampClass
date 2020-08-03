<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="template/head.jspf"%>

<style rel="stylesheet" type="text/css">
</style>
<script type="text/javascript" src="jquery/jquery-1.12.4.js"></script>
<script type="text/javascript">
	var img;
	var cnt = 0;
	function next() {

		cnt++;
		if (cnt == 7)
			cnt = 1;
		img.attr('src', 'img/samsek' + cnt + '.jpg');
		setTimeout(next, 1500);
	}

	$(function() {

		img = $('<img/>').appendTo('#content>div');
		next();

	});//ready
</script>
</head>
<body>

	<%@include file="template/header.jspf"%>

	<%@include file="template/menu.jspf"%>


	<div id="content" class="grid_16">
		<!--  content start-->

		<div></div>

		<!--  content end-->
	</div>





	<%@include file="template/footer.jspf"%>


</body>
</html>