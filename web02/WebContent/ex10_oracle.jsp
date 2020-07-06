<%@ page import="java.sql.*"%>
<%@ page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>


<%--
주석
 --%>


<%
response.setHeader("Cache-Control", "no-store");

String sql = "select * from student01";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "scott";
String password = "tiger";
Properties info = new Properties();
info.setProperty("user", user);
info.setProperty("password", password);

Class.forName("oracle.jdbc.driver.OracleDriver");//클래스 정보만 명시 , Class라는 클래스
//OracleDriver driver =	new OracleDriver(); // 드라이버 객체도 생성
//드라이버는 하나만. 

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>학생성적관리</title>
</head>
<body>
<h1>학생성적관리 데이터베이스</h1>
	<table bordercolor="1" width="800">

		<tr>
			<td width="50">학번</td>
			<td>이름</td>
			<td>국어</td>
			<td>영어</td>
			<td>수학</td>
		</tr>
		<%
			try {
				conn = DriverManager.getConnection(url, info);
				//드라이버 클래스 정보는 Class.forName()에 명시되어 있고
				//drivermanager가 필요한시점에 드라이버를  newInstance() 한다
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				while (rs.next()) {
		%>
		<tr>
			<%
				for (int i = 1; i < 6; i++) {
			%>
			<td><%=rs.getString(i)%></td>
			<%
				}//for
			%>
		</tr>
		<%
			}//while
			}//try 
			catch (Exception e) {
			} finally {
				if (stmt != null)
					stmt.close();
				if(conn!=null)
					conn.close();
			}//finally
		%>
	</table>
	<a href="detail.jsp">[상세보기]</a>
	<a href="add.jsp">[입 력]</a>
	<a href="edit.jsp">[수 정]</a>
	<a href="subtract.jsp">[삭 제]</a>
	
</body>

</html>





































