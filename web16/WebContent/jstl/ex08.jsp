<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



	<h1>JSTL</h1>

	<c:url value="jstl.jsp" var="jstl"></c:url>
	<c:url value="ex07.jsp" var="ex07">
		<c:param name="id" value="4885"></c:param>
	</c:url>
	<ul>
		<li><a href="jstl.jsp">jstl.jsp</a></li>

		<li><a href="<c:url value="jstl.jsp"></c:url>">c:url value="jstl.jsp"</a></li>


		<li><a href="ex07.jsp?id=1234">ex06.jsp</a></li>


		<li><a href="${jstl}">var jstl</a></li>
		<li><a href="${ex07}">ex07</a></li>
	</ul>
	
	
	
	
	<h1>JSTL formattind</h1>
	<c:set value="10000" var="su"	></c:set>
	<p>${su }</p>
	<p>
	<fmt:formatNumber value="${su }" pattern="##,####"></fmt:formatNumber>
	</p>
	<p>
	<fmt:formatNumber value="${su }" pattern="###,###"></fmt:formatNumber>
	</p>
	
	<c:set value="<%=new Date() %>" var="nalja"></c:set>
	<p>${nalja }</p>
	<fmt:formatDate value="${nalja }" pattern="YYYY-MM-dd hh:mm:ss"/>
</body>
</html>






