<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>학생성적관리</title>
</head>
<body>
<h1>입력페이지</h1>

<form action="insert.jsp" method ="post">
	학번<input type="text" name="num"><br>
	이름<input type="text" name="name"><br>
	국어<input type="text" name="kor"><br>
	영어<input type="text" name="eng"><br>
	수학<input type="text" name="math">
	<input type="submit" value = "입 력">

</form>

</body>
</html>