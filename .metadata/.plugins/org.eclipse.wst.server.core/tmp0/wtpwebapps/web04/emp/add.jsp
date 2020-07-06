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

	//		String deptno = new String(request.getParameter("deptno").getBytes("ISO-8859-1"), "EUC-KR");
	//		String dname = new String(request.getParameter("dname").getBytes("ISO-8859-1"), "EUC-KR");
	//		String loc = new String(request.getParameter("loc").getBytes("ISO-8859-1"), "EUC-KR");

	String sql = "select deptno, dname from dept order by deptno";

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
					<h1>EMP ADD PAGE</h1>
					<form action="insert.jsp">
						<table>
							<tr>
								<td>EMPNO</td>
								<td><input type="text" name="empno"></td>
							</tr>
							<tr>
								<td>ENAME</td>
								<td><input type="text" name="ename"></td>
							</tr>
							<tr>
								<td>JOB</td>
								<td><input type="text" name="job"></td>
							</tr>
							<tr>
								<td>DNAME</td>
								<td><SELECT name="deptno">
										<%
					
					try{
						conn = DriverManager.getConnection(url, info);
						stmt = conn.createStatement();
						rs = stmt.executeQuery(sql);
					
						while(rs.next()){
					%>

										<option value="<%= rs.getInt(1)%>">
											<%= rs.getString(2)%></option>
										<%
						}//while
					}catch(Exception e){
						e.printStackTrace();
					}finally{
						if(stmt!=null) stmt.close();
						if(conn!=null) conn.close();
					}
					
					%>
								</SELECT></td>
							</tr>
							<tr>
								<td colspan="2">
								<input type="submit" value="입 력">
								</td>

							</tr>
							
						</table>
					</form>
					<!-- 
					<a href="insert.jsp">[입 력]</a>
-->

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