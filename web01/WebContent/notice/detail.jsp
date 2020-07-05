<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
a{
 text-decoration:none;
}
</style>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>

	<br>
	<br>
	<table border="0" align="center" width="700">
		<%
			SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd hh:mm:ss");
			int num = Integer.parseInt(request.getParameter("num"));
			String writer = request.getParameter("writer");
		try {
			String sql = "select * from board where num =" + num;
			conn = DriverManager.getConnection(url, info);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				
				String creationTime = rs.getString("wtime").substring(0, rs.getString("wtime").indexOf("."));
		%>
		<tr>
			<th align="center" style="font-size: 150%;"><%=rs.getString("title")%></th>
			<!-- 제목 -->
		</tr>
		<tr bgcolor="#d2e1ff">
			<td><%=rs.getString("writer")%> <!-- 작성자 --> &nbsp; <%=creationTime%></td>
			<!-- 날짜 -->
		</tr>
		<tr height="400">
			<td><%=rs.getString("content")%></td>
			<!-- 내용 -->
		</tr>


		<%
			}
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
	<br>
	<table align = "center">
	<tr><td>
	<a href = "edit.jsp?num=<%=num%>&writer=<%=writer%>"><button>수정</button></a>
	<a href = "reply.jsp"><button>답글</button></a>
	<a href = "delete.jsp?num=<%= num%>"><button>삭제</button></a>
	<a href = "list.jsp"><button>글목록</button></a>
	</td></tr>
	</table>
	<br>
	<br>
	<br>

	<%@ include file="../template/footer.jspf"%>
</body>
</html>