<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>내장객체 request</title>
</head>
<body>



	<%
	out.print(request.toString()); 
	out.print("<br>");
	out.print(request.getRemoteAddr());
	out.print("<br>");
	out.print(request.getRequestURL());
	out.print("<br>");
	out.print(request.getRequestURI());
	out.print("<br>");
	out.print(request.getProtocol());
	out.print("<br>");
	out.print(request.getRemotePort());//client port number
	out.print("<br>");
	out.print(request.getServerName());
	out.print("<br>");
	out.print(request.getServerPort());
	out.print("<br>");
	out.print(request.getContextPath());
	out.print("<br>");
	out.print(request.getParameter("id"));
	%>

<!-- 
org.apache.catalina.connector.RequestFacade@5cf4aa1
0:0:0:0:0:0:0:1 (192.168.0.194) ip주소
http://localhost:8080/practice/ex05_request.jsp
/practice/ex05_request.jsp
HTTP/1.1
52764 크롬 포트 번호 
localhost
8080
/practice

 -->


</body>
</html>