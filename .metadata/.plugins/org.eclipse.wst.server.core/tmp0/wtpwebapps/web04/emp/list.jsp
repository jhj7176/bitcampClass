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

	String sql = "select empno, ename, dname, loc from emp natural join dept order by empno";

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


</style>

</head>
<body>

	<table align = "center" width="1024" height = "100%">

		<tr>
			<td colspan="6"><img src="/web04/img/img2.png"> <img
				src="/web04/img/char.png"></td>
		</tr>
		<!-- head -->
		<tr align="center">
			<td bgcolor="#eee8aa" >&nbsp;</td>
			<td bgcolor="#eee8aa" width="100"><a href="/web04/">HOME</a></td>
			<td bgcolor="#eee8aa" width="100"><a href="/web04/bbs/list.jsp">B B S</a></td>
			<th bgcolor="#eee8aa" width="100"><a href="/web04/emp/list.jsp">E M P</a></th>
			<td bgcolor="#eee8aa" width="100"><a href="/web04/login/form.jsp">LOGIN</a></td>
			<td bgcolor="#eee8aa" >&nbsp;</td>

		</tr>
		<!-- menubar -->
		<tr>
			<!-- contents start -->
			<td colspan="6">
				<center>
					<h1>EMP LIST PAGE</h1>

					<table width="800" border="0" cellspacing="0">
						<tr>
							<th width="50" bgcolor="#eee8aa">EMPNO</th>
							<th bgcolor="#eee8aa">ENAME</th>
							<th bgcolor="#eee8aa">DNAME</th>
							<th bgcolor="#eee8aa">LOC</th>
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
										bg = "bgcolor=\"#fafad2\"";
									}
						%>
						<tr align="center">
							<td <%=bg%>><a href="detail.jsp?empno=<%=rs.getInt(1)%>">
									<%=rs.getInt(1)%>
							</a></td>
							<td <%=bg%>><%=rs.getString(2)%></td>
							<td <%=bg%>><%=rs.getString(3)%></td>
							<td <%=bg%>><%=rs.getString(4)%></td>
						</tr>
						<%
							}//while
											} catch (Exception e) {
												e.printStackTrace();
											} finally {
												if (stmt != null)
													stmt.close();
												if (conn != null)
													conn.close();
											}
						%>
					</table>
					<table>
						<tr align="center">

							<td bgcolor="fafad2" width="100"><a href="add.jsp">�� ��</a></td>

						</tr>
					</table>
				</center>
			</td>
		</tr>
		<!-- contents end-->
		<tr>

			<!-- footer -->
			<td bgcolor="#eee8aa" width = "250"></td>
			<td colspan="4" bgcolor="#eee8aa" >��Ʈķ�� ����� ���ʱ� ������� 459 (���ʵ�,
				��Ϻ���)�� ����ڵ�Ϲ�ȣ : 214-85-24928 <br>(��)��Ʈ��ǻ�� ���ʺ��� ��ǥ�̻� : ������ / ����
				: 02-3486-9600 / �ѽ� : 02-6007-1245 <br> ����Ǹž� �Ű���ȣ : �� ����-00098ȣ /
				����������ȣ����å���� : ������<br> Copyright (c) ��Ʈķ�� All rights reserved.
			</td>
			<td bgcolor="#eee8aa" width = "250"></td>
		</tr>
		<!-- footer -->
	</table>



</body>
</html>