<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!public int add(int a, int b) {

		int c = a + b;
		return c;
	}

	public int subtract(int a, int b) {
		int c = a - b;
		return c;
	}

	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일 hh:mm");
	String now = sdf.format(new Date());
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Declaration 메서드 작성</title>
</head>
<body>
	<secsion>
	<h2><%=now %></h2>
	<%
 	int value1 = 30;
 	int value2 = 90;

 	int addResult = add(value1, value2);
 	int subResult = subtract(value1, value2);
 %> <%=value1%> + <%=value2%> = <%=addResult%> <br>
	<%=value1%> - <%=value2%> = <%=subResult%> </secsion>
</body>
</html>