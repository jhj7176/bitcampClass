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


	<h1>JSTL</h1>
	<p>jstl.jar & standard.jar library 추가</p>
	<p>tag lib에 등록해야 쓸 수 있다.</p>
	<c:out value="출력"></c:out>
 	<c:set var="msg" scope="page" value="${null }"></c:set>

	<c:out value="${msg}">대체무자열</c:out>







</body>
</html>