<%@page import="com.bit.dept.DeptSQL"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../template/header.jsp"><jsp:param value="../" name="path"/> </jsp:include>
	<jsp:useBean id="bean" class="com.bit.dept.DeptDto"></jsp:useBean>
	<jsp:setProperty property="num" name="bean" />
	<%
		//String param = request.getParameter("num");
		//int num = Integer.parseInt(param.trim());

		DeptSQL dept = new DeptSQL();
		dept.delete(bean);

		response.sendRedirect("list.jsp");
	%>


</body>
</html>