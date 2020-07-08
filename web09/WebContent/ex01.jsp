<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<jsp:useBean id="bean" class="test.Target" scope="request"></jsp:useBean>


	<h1>
		sendRedirect
		<%=bean%></h1>
	<%
		System.out.println(bean);
		response.sendRedirect("result/ex03.jsp?msg=asdf");
	%>

	<!-- 주소가 http://localhost:8080/web09/ex03.jsp로 바뀌면서 페이지 이동 
	
	cli < - >server 요청 > 응답 >요청 >응답
	
	클라이언트가 ex01을 요청 >서버가 ex01ㅇ 페이지 전달 > 클라이언트가 리다이렉트 요청 > 서버가 리다이렉트 ex03응답 


	이미지까지 서버에 총 3번 요청 
	-->

</body>
</html>