<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>paging</h1>


<%-- 	<h2>param id=<%=request.getParameter("id")%></h2> --%>
	<h2>param id= ${param.id} </h2>
	<h2>param attr name:${requestScope.id}</h2>
	<form action="">
	<button>이동</button>
	</form>

</body>
</html>