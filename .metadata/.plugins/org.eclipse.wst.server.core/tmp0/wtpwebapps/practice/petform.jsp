<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Request object</title>
</head>
<body>

	<form action="viewParameter.jsp" method="post">
		이름: <input type="text" name="name" size="10"><br> 주소: <input
			type="text" name="address" size="30"><br> 좋아하는 동물: <input
			type="checkbox" name="pet" value="강아지">강아지 <input
			type="checkbox" name="pet" value="고양이">고양이 <input
			type="checkbox" name="pet" value="돼지">돼지 <br> <input
			type="submit" value="전송">
	</form>

</body>
</html>