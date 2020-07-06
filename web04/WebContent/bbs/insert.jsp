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

	String sub =request.getParameter("sub");
	String id = request.getParameter("id");
	String content = request.getParameter("content");

	if(sub.isEmpty())sub="제목없음";
	if(id.isEmpty())id="";
	sub=sub.replace("<", "&lt");	// 인젝션 공격 방지. 
	sub=sub.replace(">", "&gt");
	sub=sub.replace("--", "--");
	sub=sub.replace(" ", "&nbsp;");
	sub=sub.replace("'", "｀");
	
	
	String sql = "insert into bbs01 (num,sub,id,nalja,content,ref,no,lev) values (bbs01_seq.nextval,'";
	sql += sub + "', '" + id + "', sysdate, '" + content + "',bbs01_seq.currval,0,0)";
	System.out.println(sql);
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

</style>
</head>
<body>


	<%
		try {
			conn = DriverManager.getConnection(url, info);
			stmt = conn.createStatement();
			stmt.executeQuery(sql);

		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
			response.sendRedirect("/web04/bbs/list.jsp");
		}
	%>



</body>
</html>