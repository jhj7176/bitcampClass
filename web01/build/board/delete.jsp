<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	
	<%
	int num = Integer.parseInt(request.getParameter("num"));
	String sql = "delete from board where num="+num;
	
	try{
		conn = DriverManager.getConnection(url, info);
		stmt = conn.createStatement();
		stmt.executeQuery(sql);
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
		response.sendRedirect("list.jsp");
	}
	
	%>
	
	
	
</body>
</html>