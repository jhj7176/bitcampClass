<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.sql.*, com.bit.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		ArrayList<EmpDto> list = new ArrayList<EmpDto>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = MyOracle.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from emp02");
			while (rs.next()) {
				EmpDto bean = new EmpDto();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setHiredate(rs.getDate("hiredate"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
			}//while
		} finally {

			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();

		}//finally
	%>
	<h1 align="center">list page</h1>
<br><br><br><br>
	<table align="center" width="70%">
		<tr>
			<a href="?title=emp/add">Add</a>
		</tr>

		<tr style="font-size: 150%;">
			<th>���</th>
			<th>�̸�</th>
			<th>��¥</th>
			<th>�ݾ�</th>
		</tr>
		<%
			for (EmpDto bean : list) {
				//EmpDto bean = list.get(i);
		%>
		<tr align="center">
			<td><%=bean.getSabun()%></td>
			<td><a style="color: black;"
				href="?title=emp/detail&sabun=<%=bean.getSabun()%>"><%=bean.getName()%></a></td>
			<td><%=bean.getHiredate()%></td>
			<td><%=bean.getPay()%></td>
		</tr>

		<%
			}
		%>

	</table>
<br><br><br><br>

</body>
</html>