<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.Calendar"%>
<%@ page trimDirectiveWhitespaces="true"%>

<%
	Date now = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yy-mm-dd hh:ss");
	String present = sdf.format(now);
	java.util.Calendar cal = Calendar.getInstance();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>현재시간</title>
</head>
<body>
	<p>
		현재시간
		<%=present%></p>
	<br>
	<p>
		오늘은
		<%=cal.get(Calendar.YEAR)%>년
		<%=cal.get(Calendar.MONTH)%>월
		<%=cal.get(Calendar.DATE)%>일 입니다.
	</p>
</body>
</html>