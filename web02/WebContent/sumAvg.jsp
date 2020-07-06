<%@ page import="java.sql.*"%>
<%@ page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>


<%
	request.setCharacterEncoding("utf-8");
	String num = request.getParameter("num");
	String sql = "select * from student01 where num=" + num;

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


<%!public int sum(String a, String b, String c) {
		int a1 = Integer.parseInt(a);
		int b1 = Integer.parseInt(b);
		int c1 = Integer.parseInt(c);
		return a1 + b1 + c1;
	}

	public double average(int sum) {
		return sum * 100 / 3 / 100.0;
	}%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>학생성적관리</title>
</head>
<body>
	<h1>상세보기 페이지</h1>

	<table bordercolor="1" width="800">
		<tr>
			<td width="50">학번</td>
			<td>이름</td>
			<td>국어</td>
			<td>영어</td>
			<td>수학</td>
			<td>총점</td>
			<td>평균</td>
		</tr>

		<tr>
			<%
				try {
					conn = DriverManager.getConnection(url, info);
					stmt = conn.createStatement();
					rs = stmt.executeQuery(sql);

					while (rs.next()) {
			%>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=sum(rs.getString(3), rs.getString(4),
							rs.getString(5))%></td>
			<td><%=average(sum(rs.getString(3), rs.getString(4),
							rs.getString(5)))%></td>
			<%
				}//while
				} catch (Exception e) {

				} finally {

					if (stmt != null)
						stmt.close();
					if (conn != null)
						conn.close();
				}//finally
			%>
		</tr>
	</table>
	<a href="ex10_oracle.jsp">리스트로 이동</a>
</body>
</html>