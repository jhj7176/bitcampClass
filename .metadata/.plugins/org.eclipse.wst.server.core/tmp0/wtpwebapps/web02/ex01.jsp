<%@ page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import ="java.util.*" %>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%!
public int add(int a, int b){
	System.out.println("a + b");
	return a+b;
}

%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Insert title here</title>


</head>

<body>
<h1> scriptlet</h1>

<% 
	int a=100;
	int b=20;
	
	Date date = new Date();
	System.out.println(date);
	SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd hh:mm:ss");
	String now = sdf.format(date);
%>
	a + b = <%= add(a,b) %><br>
	현재시각 : <%= now %>

</body>

</html>

