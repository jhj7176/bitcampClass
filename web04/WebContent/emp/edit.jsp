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
	String driver = "oracle.jdbc.driver.OracleDriver";

			String empno = request.getParameter("empno");
	//		String dname = new String(request.getParameter("dname").getBytes("ISO-8859-1"), "EUC-KR");
	//		String loc = new String(request.getParameter("loc").getBytes("ISO-8859-1"), "EUC-KR");

	String sql = "select empno,ename,job,mgr,hiredate,sal,comm,";
	sql+="(select dname from dept where dept.deptno = emp.deptno) from emp where empno = "+empno;

	Class.forName(driver);
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

<style type="text/css">
a {
	text-decoration: none
}
table {}
			td {
				padding: 10px;
				border: 1px solid #666666;
			}

</style>

</head>
<body>

	<table width="100%">

		<tr>
			<td colspan="6"><img src="../img/img2.png">
			<img src="../img/char.png"></td>
				
		</tr>
		<!-- head -->
		<tr align = "center">
			<td bgcolor="#eee8aa" width="300"></td>
			<td bgcolor="#eee8aa" width="100"><a href="../index.jsp">HOME</a></td>
			<td bgcolor="#eee8aa" width="100"><a href="../dept/list.jsp">DEPT</a></td>
			<th bgcolor="#eee8aa" width="100"><a href="list.jsp">E M P</a></th>
			<td bgcolor="#eee8aa" width="100"><a href="../login/list.jsp">LOGIN</a></td>
			<td bgcolor="#eee8aa" width="300"></td>

		</tr>
		<!-- menubar -->
		<tr>
			<!-- contents start -->
			<td colspan="6">
				<center>
					<h1>EDIT PAGE</h1>

					<table width="800" border="0" cellspacing="0" align = "center">

						<%
							try {
								conn = DriverManager.getConnection(url, info);
								stmt = conn.createStatement();
								rs = stmt.executeQuery(sql);
								int cnt = 0;
						if (rs.next()) {
							String bg = "";
							bg = "bgcolor=\"#fafad2\"";
									
						%>
						<form action ="update.jsp">
						<tr align="center">						
						<td <%= bg %>>EMPNO</td>	
						<td><input type="text" name="empno" value = "<%= rs.getInt(1)%>" readonly = "readonly"></td>							
						</tr>
						
						<tr align="center">		
						<td <%= bg %>>ENAME</td>	
						<td><input type="text" name="ename" value = "<%= rs.getString(2)%>"></td>	
						</tr>
						
						<tr align="center">
						<td <%= bg %>>JOB</td>	
						<td><input type="text" name="job" value = "<%= rs.getString(3)%>"></td>	
						</tr>	
							
						<tr align="center">
						<td <%= bg %>>MGR</td>	
						<td><input type="text" name="mgr" value = "<%= rs.getInt(4)%>"></td>	
						</tr>	
							
						<tr align="center">
						<td <%= bg %>>HIREDATE</td>
						<td><%=rs.getDate(5) %></td>	
						</tr>			
						
						<tr align="center">
						<td <%= bg %>>SAL</td>	
						<td><input type="text" name="sal" value = "<%= rs.getInt(6)%>"></td>
						
						</tr>		
						<tr align="center">
						<td <%= bg %>>COMM</td>	
						<td><input type="text" name="comm" value = "<%= rs.getInt(7)%>"></td>	
						</tr>
								
						<tr align="center">
						<td <%= bg %>>DNAME</td>
						<td><%=rs.getString(8) %></td>
						</tr>
						
					<td colspan="2"  align="center">
					<input type="submit" value="수 정">
					
					<input type="reset" value="초기화">
				</td>
						<%
							}//if
							} catch (Exception e) {
								e.printStackTrace();
							} finally {
								if (stmt != null)
									stmt.close();
								if (conn != null)
									conn.close();
							}
						%>
						</form>
					</table>
					
		</center>
		</td>
		</tr>
		<!-- contents end-->
		<tr>

			<td bgcolor="#eee8aa" colspan="6" face="white">비트캠프 서울시 서초구 강남대로
				459 (서초동, 백암빌딩)｜ 사업자등록번호 : 214-85-24928 <br>(주)비트컴퓨터 서초본원 대표이사
				: 조현정 / 문의 : 02-3486-9600 / 팩스 : 02-6007-1245 통신판매업 신고번호 : 제
				서초-00098호 / 개인정보보호관리책임자 : 최종진<br> Copyright (c) 비트캠프 All rights
				reserved.
			</td>
		</tr>
		<!-- footer -->
	</table>



</body>
</html>