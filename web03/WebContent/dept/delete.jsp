<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>


<%
	request.setCharacterEncoding("EUC-KR");

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		String driver="oracle.jdbc.driver.OracleDriver";
		
//		String deptno = request.getParameter("deptno");
//		String dname = request.getParameter("dname");
//		String loc = request.getParameter("loc");
		String deptno = new String(request.getParameter("deptno").getBytes("ISO-8859-1"), "EUC-KR");
//		String dname = new String(request.getParameter("dname").getBytes("ISO-8859-1"), "EUC-KR");
//		String loc = new String(request.getParameter("loc").getBytes("ISO-8859-1"), "EUC-KR");


	String sql = "delete from dept where deptno = " + deptno;

	Class.forName(driver);
	//Class.forName("oracle.jdbc.driver.OracleDriver");
	Properties info = new Properties();
	info.setProperty("user", user);
	info.setProperty("password", password);
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EMP table</title>

<!-- 
<meta http-equiv="refresh"
	content="1; url=http://localhost:8080/web03/dept/list.jsp">
-->
</head>
<body>

	<%
		
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url, info);
		stmt = conn.createStatement();
		stmt.executeQuery(sql);
		
		response.sendRedirect("list.jsp");
	}catch(ClassNotFoundException e){
		System.out.println("ojdbc14.jar가 라이브러리에 있는지 확인");
		e.printStackTrace();
	}catch(Exception e){
		System.out.println("sql, url, user, password 확인");
		e.printStackTrace();
	}finally{
		
		if(stmt!=null) stmt.close();
		if(conn!=null) conn.close();
	}
	//	response.sendRedirect("list.jsp");
	
	//<h1>처리완료</h1>
	%>


</body>
</html>