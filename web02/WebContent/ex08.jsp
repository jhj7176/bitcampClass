<%@page import="java.util.Arrays"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>request.getParameter</h1>
	<%
	
		out.print("header names<br><br>");
		Enumeration headers = request.getHeaderNames();
		while(headers.hasMoreElements()){
			out.print(headers.nextElement()+"<br>");
		}
		out.print(request.getHeader("<br><br>content-length"));
		out.print(request.getHeader("<br>connection"));
		out.print(request.getHeader("<br>accept"));
		out.print(request.getHeader("<br>host"));
		
	
		out.print("<br><br>");
		Enumeration names = request.getParameterNames();
		out.print("parameters Enumeration: ");
		while (names.hasMoreElements()) {
			out.print(names.nextElement() + " ");
		}
		out.print("<br><br>");
		
		out.print("parameters Map");
		out.print("<br>");
		Map<String, String[]> map = request.getParameterMap();
		Set<String> set = map.keySet();
		Iterator<String> ite = set.iterator();
		while(ite.hasNext()){
			String key = ite.next();
			out.print(key+" ");
			out.print(Arrays.toString(map.get(key)));
			out.print("<br>");
		}

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String[] che = request.getParameterValues("che");
	%>
	<h2>
		Method :
		<%=request.getMethod()%></h2>
	<p>
		id :
		<%=id%></p>
	<p>
		pw :
		<%=pw%></p>
	<p>
		che :
		<%=Arrays.toString(che)%></p>


</body>
</html>