<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>

</head>

<body>
	<h1>값 전달</h1>
	<form action="ex08.jsp" method = "post"><!-- post method는 주소창에 id pw가 보이지 않음(헤더에있음) 디폴트는 get메소드(주소창에전달) -->
		id<input type="text" name="id"> <br>
		pw<input type="password" name="pw"> <br>
	
		hobby
		<input type="checkbox" name ="che" value = "item1">
		<input type="checkbox" name ="che" value = "item2">
		<input type="checkbox" name ="che" value = "item3">
		<input type="checkbox" name ="che" value = "item4">
		<input type="submit">
	</form>
</body>

</html>

<!-- 
request.getParameter

parameters Enumeration: id pw che

parameters Map
id [admin]
pw [12345]
che [item1, item2, item4]

Method : POST

id : admin

pw : 12345

che : [item1, item2, item4]


 -->