<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%@ include file = "../template/header.jspf"%>

	<%
	String sabun = request.getParameter("sabun");
	String sql = "delete from emp01 where sabun ="+sabun;
		try {
			conn = DriverManager.getConnection(url, info);
			stmt = conn.createStatement();
			stmt.executeQuery(sql);

		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
			response.sendRedirect("/web05/emp/list.jsp");
		}
	%>

</body>
</html>