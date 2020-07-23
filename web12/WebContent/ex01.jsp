<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<%
	System.out.println("요청됨");
	String param = request.getParameter("name");
	String param2 = request.getParameter("cnt");

	if (param == null) {
		param = "samsek";
	}
	if (param2 == null) {
		param2 = "4";
	}
	int cnt = Integer.parseInt(param2);

	for (int i = 0; i < cnt; i++) {
	%>
	<img src="img/<%=param + (i + 1)%>.jpg">
	<%
		}
	%>
</body>
</html>