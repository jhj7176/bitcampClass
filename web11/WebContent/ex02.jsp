<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>


<body>
	<h1>ex02 jsp page</h1>
	<div>
		<p>responseText</p>
	</div>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		if (id.equals("admin") && pw.equals("1234")) {
			out.print("<h2>관리자</h2>");
		}else if(id.equals("user1") && pw.equals("1234")){
			out.print("<h2>user1님 로그인</h2>");
		}

		System.out.println("ex02 jsp");
	%>
</body>
</html>