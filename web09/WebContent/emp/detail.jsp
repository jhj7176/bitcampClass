<%@page import="com.bit.MyOracle"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="com.bit.EmpDto"></jsp:useBean>
	<jsp:setProperty property="sabun" name="bean" />

	<%
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = MyOracle.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from emp02 where sabun ="
					+ bean.getSabun());
			if (rs.next()) {
				bean.setName(rs.getString("name"));
				bean.setHiredate(rs.getDate("hiredate"));
				bean.setPay(rs.getInt("pay"));
			}

		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();

		}
	%>

	<h1 align="center">Detail page</h1>

	<br>
	<br>
	<br>
	<br>

	<table border="0" width="50%" align="center">


		<tr align="center">
			<th bgcolor="#6262d7" style="color: white;">사번</th>
			<td><jsp:getProperty property="sabun" name="bean" /></td>
		</tr>

		<tr align="center">
			<th bgcolor="#6262d7" style="color: white;">이름</th>
			<td><%=bean.getName()%></td>
		</tr>

		<tr align="center">
			<th bgcolor="#6262d7" style="color: white;">입사일</th>
			<td><%=bean.getHiredate()%></td>
		</tr>

		<tr align="center">
			<th bgcolor="#6262d7" style="color: white;">연봉</th>
			<td><%=bean.getPay()%></td>
		</tr>

		<tr align="right">
			<td colspan="2"><a
				href="?title=emp/edit&sabun=<jsp:getProperty property="sabun" name="bean"/>"><button>수정</button></a>
				<a
				href="?emp/delete&sabun=<jsp:getProperty property="sabun" name="bean"/>"><button>삭제</button></a>
			</td>
		</tr>


	</table>
	<br>
	<br>
	<br>
	<br>
</body>
</html>