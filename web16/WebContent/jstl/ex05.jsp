<%@page import="java.util.StringTokenizer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

p{
	border
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h1>JSTL etc</h1>
	<%
	String msg = "java,DB,web,,,framwork,app";
		pageContext.setAttribute("msg", msg);
	
	StringTokenizer stToken = new StringTokenizer(msg,", ");
	while(stToken.hasMoreTokens()){
		System.out.println(stToken.nextToken());
	}
		System.out.println();
	
	String[] spli=msg.split(",");
	for(String s : spli){
		System.out.println(s);
	}
	%>
	<ul>
	<c:forTokens items="${msg }" var ="ele" delims=",">
	<!-- split()과 비슷함.  -->
	<li>${ele }</li>
	
	
	</c:forTokens>
	
	</ul>

		<div>
		<c:import url="https://www.bitcamp.co.kr/"></c:import>
		
		</div>
</body>
</html>