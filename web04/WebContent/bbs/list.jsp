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

	String word1 = request.getParameter("word");
	String key1 = request.getParameter("key");
	String key = key1;
	String word = word1;

	if (key == null) {
		key = "sub";
	} else {

		key = new String(key1.getBytes("ISO-8859-1"), "EUC-KR");
	}
	if (word == null) {
		word = "";
	} else {

		word = new String(word1.getBytes("ISO-8859-1"), "EUC-KR");
	}

	String sql = "select num,sub,id,nalja,lev from bbs01 where " + key
			+ " like '%" + word + "%' order by ref desc, no ";

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
					<h1>BOARD PAGE</h1>
					<table>

						<tr align="center">

							<th width="50" bgcolor="#eee8aa">NUM</th>
							<th width="400" bgcolor="#eee8aa">TITLE</th>
							<th width="100" bgcolor="#eee8aa">ID</th>
							<th width="120" bgcolor="#eee8aa">DATE</th>

						</tr>

						<%
							try {
								conn = DriverManager.getConnection(url, info);
								stmt = conn.createStatement();
								rs = stmt.executeQuery(sql);
								int cnt = 0;
								while (rs.next()) {
									String bg = "";
									if(cnt++%2==1) bg = "bgcolor=\"#fafad2\"";
									
									int gap = rs.getInt(5);
									String msg ="";
									for(int i =0;i<gap; i++){
										msg+="&nbsp;&nbsp;&nbsp;";
									}
									if(gap!=0) msg +="└";
						%>
						<tr>
							<td <%=bg %> align="center" width="100"><a href = "detail.jsp?num=<%=rs.getString(1)%>"><%=rs.getString(1)%></a></td>
							<td <%=bg %> width="100"><a href = "detail.jsp?num=<%=rs.getString(1)%>"><%=msg+rs.getString(2)%></a></td>
							<td <%=bg %> align="center" width="100"><a href = "detail.jsp?num=<%=rs.getString(1)%>"><%=rs.getString(3)%></a></td>
							<td <%=bg %> align="center" width="100"><a href = "detail.jsp?num=<%=rs.getString(1)%>"><%=rs.getDate(4)%></a></td>
						</tr>

						<%
								}//while
							} finally {
								if (stmt != null) {
									stmt.close();
								}
								if (conn != null) {
									conn.close();
								}
							}
						%>

					</table>
					<table>
						<tr>
							<td>
								<form action="list.jsp">

									<select name="key">
										<option value="sub">title</option>
										<option value="id">writer</option>
									</select> <input type="text" name="word"> <input type="submit"
										value="Search">
								</form>
							</td>
							<td>
								<form action="add.jsp">
									<button>write</button>
								</form>
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