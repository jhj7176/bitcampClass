<%@page import="java.util.ArrayList"%>
<%@page import="com.bit.emp.EmpDto"%>
<%@page import="com.bit.emp.EmpSQL"%>
<%@page import="com.bit.util.MyOracle"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
a {
	text-decoration: none;
}
</style>
</head>
<body>

	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>

	<br>
	<br>
	<br>
	<h1 align="center">List Page</h1>
	<table width = "45%" align="center">
		<tr align="center">
			<th>Num</th>
			<th>Name</th>
			<th>HireDate</th>
			<th>Pay</th>
		</tr>

		<%
			ArrayList<EmpDto> list = EmpSQL.list();
			for (int i = 0; i < list.size(); i++) {
				EmpDto bean = list.get(i);
		%>
		<tr align ="center">
			<td><%=bean.getSabun()%></td>
			<td><%=bean.getName()%></td>
			<td><%=bean.getHiredate()%></td>
			<td><%=bean.getPay()%></td>
		</tr>
		<%
			}
		%>


	</table>
	<br>
	<br>
	<br>


	<%@ include file="../template/footer.jspf"%>


</body>
</html>