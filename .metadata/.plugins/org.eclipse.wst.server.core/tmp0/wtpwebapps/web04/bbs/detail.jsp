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

	String num = request.getParameter("num");
	String id = "";
	String sub = "";
	String content = "";
	String nalja = "sysdate";
	int ref = 0;
	int no = 0;
	int lev=0;
	String sql = "select id,nalja,sub,content,ref,no,lev from bbs01 where num = "+ num;

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
<title>Insert title here</title>


<style type="text/css">
a {
	text-decoration: none
}
</style>
</head>
<body>

	<table width="1024" align="center">

		<tr>
			<td colspan="6"><img src="/web04/img/img2.png"> <img
				src="/web04/img/char.png"></td>
		</tr>
		<tr align="center">
			<td bgcolor="#eee8aa">&nbsp;</td>
			<td width="100" bgcolor="#eee8aa"><a href="/web04/">HOME</a></td>
			<th width="100" bgcolor="#eee8aa"><a href="/web04/bbs/list.jsp">B
					B S</a></th>
			<td width="100" bgcolor="#eee8aa"><a href="/web04/emp/list.jsp">E
					M P</a></td>
			<td width="100" bgcolor="#eee8aa"><a
				href="/web04/login/form.jsp">LOGIN</a></td>
			<td bgcolor="#eee8aa">&nbsp;</td>
		</tr>
		<tr>
			<!-- content start -->
			<td colspan="6">
				<center>
					<h1>DETAIL PAGE</h1>

					<table width="50%">

						<%
							try {
								conn = DriverManager.getConnection(url, info);
								stmt = conn.createStatement();
								rs = stmt.executeQuery(sql);
								if (rs.next()) {
									id = rs.getString(1);
									nalja = rs.getDate(2).toString();
									sub = rs.getString(3);
									content = rs.getString(4);
									ref=rs.getInt(5);
									no=rs.getInt(6);
									lev=rs.getInt(7);
								}//if
							} finally {
								if (stmt != null)
									stmt.close();
								if (conn != null)
									conn.close();
							}
						%>
						<tr align="center">

							<th width="50" bgcolor="#eee8aa">NUM</th>
							<td width="50" bgcolor="#eee8aa"><%=num%></td>
							<th width="100" bgcolor="#eee8aa">WRITER</th>
							<td width="100" bgcolor="#eee8aa"><%=id%></td>
							<th width="50" bgcolor="#eee8aa">DATE</th>
							<td width="120" bgcolor="#eee8aa"><%=nalja%></td>

						</tr>
						<tr align="center">

							<th bgcolor="#eee8aa">TITLE</th>
							<td bgcolor="#fafad2" colspan="5"><%=sub%></td>

						</tr>
						<tr align="center">
							<th>&nbsp;</th>
						</tr>
						<tr>
							<td colspan="6"><%=content%></td>
						</tr>
						<tr align="center">
							<th>&nbsp;</th>
						</tr>
						<tr align="center">
							<th>&nbsp;</th>
						</tr>
						<tr>
							<td align="center" bgcolor="#eee8aa" colspan="6"><a
								href="edit.jsp?num=<%=num%>"><button>Edit</button></a> <a
								href="delete.jsp?num=<%=num%>"><button>Delete</button></a> 
								<a href="readd.jsp?num=<%=num%>&ref=<%=ref%>&no=<%=no%>&lev=<%=lev%>"><button>Reply</button></a>
								<a href="list.jsp"><button>Back</button></a>
								</td>


						</tr>
					</table>


				</center>
			</td>
		</tr>
		<!-- content end -->
		<tr>
			<!-- footer -->
			<td bgcolor="#eee8aa" width="250"></td>
			<td colspan="4" bgcolor="#eee8aa">비트캠프 서울시 서초구 강남대로 459 (서초동,
				백암빌딩)｜ 사업자등록번호 : 214-85-24928 <br>(주)비트컴퓨터 서초본원 대표이사 : 조현정 / 문의
				: 02-3486-9600 / 팩스 : 02-6007-1245 <br> 통신판매업 신고번호 : 제
				서초-00098호 / 개인정보보호관리책임자 : 최종진<br> Copyright (c) 비트캠프 All rights
				reserved.
			</td>
			<td bgcolor="#eee8aa" width="250"></td>
		</tr>




	</table>



</body>
</html>