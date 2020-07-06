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
			int ref = Integer.parseInt(request.getParameter("ref"));
			int no = Integer.parseInt(request.getParameter("no"));
			int lev = Integer.parseInt(request.getParameter("lev"));
			SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd hh:mm:ss");
			int num = Integer.parseInt(request.getParameter("num"));
			String writer = request.getParameter("writer");
			String content="";
			String title = "";
		try {
			String sql = "select * from notice where num =" + num;
			conn = DriverManager.getConnection(url, info);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				
				String creationTime = rs.getString("wtime").substring(0, rs.getString("wtime").indexOf("."));
				//�Խñ� �ۼ� ��¥. ����� �ð�����
				content = rs.getString("content").replace("\r\n", "<br>");
				title = rs.getString("title");
				
		%>
		<tr>
			<th align="center" style="font-size: 150%;"><%=rs.getString("title")%></th>
			<!-- ���� -->
		</tr>
		<tr bgcolor="#d2e1ff">
			<td><%=rs.getString("writer")%> <!-- �ۼ��� --> &nbsp; <%=creationTime%></td>
			<!-- ��¥ -->
		</tr>
		<tr height="400">
			<td><%=rs.getString("content").replace("\r\n", "<br>")%></td><!-- ����ó�� -->
			<!-- ���� -->
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
	<a href = "edit.jsp?num=<%=num%>&writer=<%=writer%>&title=<%=title%>&content=<%=content%>"><button>����</button></a>
	<a href = "reply.jsp?ref=<%=ref%>&no=<%=no%>&lev=<%=lev%>"><button>���</button></a>
	<a href = "delete.jsp?num=<%= num%>"><button>����</button></a>
	<a href = "list.jsp"><button>�۸��</button></a>
	</td></tr>
	</table>
	<br>
	<br>
	<br>

	<%@ include file="../template/footer.jspf"%>
</body>
</html>