
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@ page import="java.sql.*, java.util.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%
	
	request.setCharacterEncoding("utf-8");
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	
	String num =request.getParameter("num");
	String name =  request.getParameter("name");
	String kor =  request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math =  request.getParameter("math");
	if(num.isEmpty()||name.isEmpty()||kor.isEmpty()||eng.isEmpty()||math.isEmpty()){
		response.sendRedirect("fail.jsp");
	}
	
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Properties info = new Properties();
	info.setProperty("user", user);
	info.setProperty("password", password);
	ResultSet rs = null;
	Connection conn = null;
	Statement stmt = null;
	
	String sql="update student01 set ";
	sql+="name = '"+name+"', kor = "+kor+", eng = "+eng+", math = "+math+" where num="+num;

%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>학생성적관리</title>
</head>
<body>

	<%
	System.out.println(sql);
	try{
		conn = DriverManager.getConnection(url, info);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		response.sendRedirect("ex10_oracle.jsp");
	}catch(Exception e){
	}finally{
		if(stmt!=null) stmt.close();
		if(conn!=null) conn.close();
	}
	
	%>

	<a href="ex10_oracle.jsp">리스트로 이동</a>
</body>
</html>