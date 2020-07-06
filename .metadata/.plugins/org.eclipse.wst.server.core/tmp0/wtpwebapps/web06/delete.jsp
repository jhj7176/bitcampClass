<%@page import="com.bit.emp.dto.Emp02Bean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="../template/header.jspf"%>

	<%
	if("POST".equals(request.getMethod())){
		try{
	int sabun = Integer.parseInt(request.getParameter("sabun"));
		com.bit.emp.Emp02Delete emp = new com.bit.emp.Emp02Delete();
		emp.delete(sabun);
		response.sendRedirect("list.jsp");
		}catch(Exception e){
			return;
		}
	}
	
	
	%>


	<h1><%=request.getParameter("idx") %>번 글을 삭제하시겠습니까</h1>
		<form method = "post">
			<input type="hidden" name="sabun">
			<input type="submit" value = "삭제">
		
		
		
		</form>

		
</body>
</html>