<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<%@ page trimDirectiveWhitespaces="true"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="../template/header.jspf"%>

	<%
		String param1 = null;
		String param2 = null;
		String name = null;

		try {
		String param3 = new String(request.getParameter("back").getBytes(
				"ISO-8859-1"), "EUC-KR");
		System.out.println(param3);
			if (param3.equals("Back")) {
				response.sendRedirect("list.jsp");
				return;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		
		int pay = 0;
		param1 = new String(request.getParameter("name").getBytes(
				"ISO-8859-1"), "EUC-KR");
		param2 = new String(request.getParameter("pay").getBytes(
				"ISO-8859-1"), "EUC-KR");

		try {
			name = param1.trim();
			pay = Integer.parseInt(param2.trim());
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("add.jsp?name=" + param1);
			return;
		}

		String sql = "insert into emp01 values (emp01_seq.nextval,'" + name
				+ "',sysdate," + pay + ")";

		try {
			conn = DriverManager.getConnection(url, info);
			stmt = conn.createStatement();
			stmt.executeQuery(sql);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}

		response.sendRedirect("list.jsp");
	%>
</body>
</html>