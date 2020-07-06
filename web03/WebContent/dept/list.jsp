<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	String sql = "select * from dept order by deptno";
	String driver = "oracle.jdbc.driver.OracleDriver";

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

			<td colspan="6"><img src="../img/img2.png"> <img
				src="../img/char.png"></td>
		</tr>
		<!-- head -->
		<tr align="center">
			<td bgcolor="#eee8aa" width="300"></td>
			<td bgcolor="#eee8aa" width="100"><a href="../index.jsp">HOME</a></td>
			<th bgcolor="#eee8aa" width="100"><a href="list.jsp">DEPT</a></th>
			<td bgcolor="#eee8aa" width="100"><a href="../emp/list.jsp">E
					M P</a></td>
			<td bgcolor="#eee8aa" width="100"><a href="../login/list.jsp">LOGIN</a></td>
			<td bgcolor="#eee8aa" width="300"></td>

		</tr>
		<!-- menubar -->

		<tr>
			<!-- contents start -->
			<td colspan="6">
				<center>
					<h1>DEPT LIST PAGE</h1>
					<table border="0" width="600" align="center">
						<tr align="center">

							<th bgcolor="#eeee8aa" width="70">DEPTNO</th>
							<th bgcolor="#eeee8aa">DNAME</th>
							<th bgcolor="#eeee8aa">LOCATION</th>
							<th bgcolor="#eeee8aa">DEL</th>


							<!-- 사원 정보 출력   -->
						</tr>

						<%
							try {
								conn = DriverManager.getConnection(url, info);
								stmt = conn.createStatement();
								rs = stmt.executeQuery(sql);
								int cnt = 0;
								while (rs.next()) {
									String bg = "";
									if (cnt++ % 2 == 1) {
										bg = "bgcolor = \"#fafad2\"";
									}
						%>
						<tr align="center">
							<td <%=bg%> width="50"><%=rs.getInt(1)%></td>
							<td <%=bg%>><%=rs.getString(2)%></td>
							<td <%=bg%>><%=rs.getString(3)%></td>
							<td <%=bg%> width="50">
								<!-- <a href="delete.jsp?deptno=<%=rs.getInt(1)%>">[삭 제]</a>-->
								<form action="delete.jsp" method="get">
									<input type="hidden" name="deptno" value="<%=rs.getInt(1)%>">
									<input type="submit" value="삭제">
								</form>
							</td>

						</tr>
						<%
							}//while
							} catch (Exception e) {
								e.printStackTrace();
							} finally {
								if (conn != null)
									conn.close();
								if (stmt != null)
									stmt.close();
							}
						%>


					</table>
					<table>
						<tr align="center">
							<td width="100">
							<form action = "add.jsp">
							<div class="button">
							<button type="submit">
							입 력</button></div></form>
					<!-- <label>asdfdsaf</label>-->
							</td>
						</tr>
					</table>
		</tr>
		</center>
		<!-- contents end-->
		</td>
		<tr>

			<td bgcolor="#eee8aa" colspan="6">비트캠프 서울시 서초구 강남대로 459 (서초동,
				백암빌딩)｜ 사업자등록번호 : 214-85-24928 <br>(주)비트컴퓨터 서초본원 대표이사 : 조현정 / 문의
				: 02-3486-9600 / 팩스 : 02-6007-1245 통신판매업 신고번호 : 제 서초-00098호 /
				개인정보보호관리책임자 : 최종진<br> Copyright (c) 비트캠프 All rights reserved.
			</td>
		</tr>
		<!-- footer -->
	</table>



</body>
</html>