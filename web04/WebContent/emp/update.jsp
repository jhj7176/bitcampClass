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

		//String deptno = new String(request.getParameter("deptno").getBytes("ISO-8859-1"), "EUC-KR"); //select ������
		//String dname = new String(request.getParameter("dname").getBytes("ISO-8859-1"), "EUC-KR");		
		String empno = request.getParameter("empno");
		String ename = new String(request.getParameter("ename").getBytes("ISO-8859-1"), "EUC-KR");
		String job = new String(request.getParameter("job").getBytes("ISO-8859-1"), "EUC-KR");
		String mgr = request.getParameter("mgr");
		String sal = request.getParameter("sal");
		String comm =request.getParameter("comm");


		String sql = "update emp set empno ="+empno;
		sql += ", ename ='"+ename+"', job ='" +job+"', mgr= "+mgr+", sal= "+sal+", comm="+comm + "where empno ="+empno;
	
		
		Class.forName(driver);
		//Class.forName("oracle.jdbc.driver.OracleDriver");
		Properties info = new Properties();
		info.setProperty("user", user);
		info.setProperty("password", password);
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
	try{
		
		conn = DriverManager.getConnection(url, info);
		stmt = conn.createStatement();
		stmt.executeQuery(sql);
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		
		if(stmt!=null) stmt.close();
		if(conn!=null) conn.close();
	}
	%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EMP table</title>


<meta http-equiv="refresh" content="0; url=detail.jsp?empno=<%=empno%>">

</head>
<body>


</body>
</html>