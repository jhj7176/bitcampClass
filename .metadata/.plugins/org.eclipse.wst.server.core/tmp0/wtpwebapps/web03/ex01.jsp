<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page buffer="none" %>    
<%@ page trimDirectiveWhitespaces="true" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>pageContext</title>
</head>
<body>
<h1>pageContext �⺻��ü</h1>


<%
	String id = pageContext.getRequest().getParameter("id");
	JspWriter myOut = pageContext.getOut();
	myOut.println("JspWriter pageContext.getOut");
	myOut.println("id: "+id);

%>

<h1>application �⺻��ü</h1>
<%

 	String value = application.getInitParameter("bitCamp1");
	out.println(value+"<br>");
	
	Enumeration values = application.getInitParameterNames();
	while(values.hasMoreElements()){
		out.println(values.nextElement());
		out.print("<br>");
	}
	

%>


</body>
</html>