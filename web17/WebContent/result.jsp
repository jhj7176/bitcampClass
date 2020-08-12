<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/header.css" />

<style type="text/css">
body>fieldset {
	width: 300px;
}
</style>
</head>
<body>
	<%@ include file="template/header.jspf"%>

	<h1>result</h1>


	<p>${login.name }님 로그인 되었습니다.</p>

</body>
</html>