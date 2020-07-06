<%@page import="java.io.OutputStream"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	//response - 서버 >> 클라이언트로 정보 전달
	//request - 클라이언트 >> 서버로 정보 전달 
	out.print(response);
	OutputStream os = response.getOutputStream();
	os.write("abcdefg".getBytes());
	os.close();
%>

</body>
</html>