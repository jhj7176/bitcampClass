<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
	
	
	<%
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "scott";
		String password = "tiger";
		String sql = "select * from dept order by deptno";
		String driver="oracle.jdbc.driver.OracleDriver";
		
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
				<td colspan="6"><img src="../img/img2.png">
			<img src="../img/char.png"></td>
		</tr>
		<!-- head -->
		<tr align="center">
			<td bgcolor="#eee8aa" width="300"></td>
			<td bgcolor="#eee8aa" width="100"><a href="../index.jsp">HOME</a></td>
			<th bgcolor="#eee8aa" width="100"><a href="list.jsp">DEPT</a></th>
			<td bgcolor="#eee8aa" width="100"><a href="../emp/list.jsp">E M P</a></td>
			<td bgcolor="#eee8aa" width="100"><a href="../login/list.jsp">LOGIN</a></td>
			<td bgcolor="#eee8aa" width="300"></td>

		</tr>
		<!-- menubar -->
		<tr>
			<!-- contents start -->
			<td colspan="6">

				<h1>DEPT ADD PAGE</h1>
				<form action="insert.jsp">
					<table align="center">
				
						<tr>
							<td>deptno</td>
							<td><input type="text" name="deptno"><br></td>
						</tr>
						<tr>
							<td>dname</td>
							<td><input type="text" name="dname"><br></td>
						</tr>
						<tr>
							<td>loc</td>
							<td><input type="text" name="loc"> <br></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								value="�� ��"> <input type="submit" value="�� ��"></td>
						</tr>
						
					</table>
				</form>
			</td>
		</tr>
		<!-- contents end-->
		<tr>

			<td bgcolor="#eee8aa" colspan="6">��Ʈķ�� ����� ���ʱ� ������� 459 (���ʵ�,
				��Ϻ���)�� ����ڵ�Ϲ�ȣ : 214-85-24928 <br>(��)��Ʈ��ǻ�� ���ʺ��� ��ǥ�̻� : ������ / ����
				: 02-3486-9600 / �ѽ� : 02-6007-1245 ����Ǹž� �Ű���ȣ : �� ����-00098ȣ /
				����������ȣ����å���� : ������<br> Copyright (c) ��Ʈķ�� All rights reserved.
			</td>
		</tr>
		<!-- footer -->
	</table>



</body>
</html>