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
	Class.forName(driver);
	Properties info = new Properties();
	info.setProperty("user", user);
	info.setProperty("password", password);
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String sub = request.getParameter("sub");
	String id = request.getParameter("id");
	String content = request.getParameter("content");

	int ref = Integer.parseInt(request.getParameter("ref"));
	System.out.println(ref);
	int no = Integer.parseInt(request.getParameter("no"));
	int lev = Integer.parseInt(request.getParameter("lev"));

	String sql = "update bbs01 set no = no+1 where ref = " + ref;
	if (lev == 0) {

		no = 0;
	} else {
		sql += "and no>=" + no;
	}
	lev += 1;

	if (sub.isEmpty())
		sub = "제목없음";
	if (id.isEmpty())
		id = "";
	sub = sub.replace("<", "&lt"); // 인젝션 공격 방지. 
	sub = sub.replace(">", "&gt");
	sub = sub.replace("--", "--");
	//sub=sub.replace(" ", "&nbsp;");
	sub = sub.replace("'", "｀");

	String sql2 = "insert into bbs01 (num,sub,id,nalja,content,ref,no,lev) values (bbs01_seq.nextval,'";
	sql2 += sub + "', '" + id + "', sysdate, '" + content + "'," + ref
			+ "," + no + "," + lev + " )";
	System.out.println(sql);
	System.out.println(sql2);
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
			stmt= conn.createStatement();
			stmt.executeQuery(sql2);

		}catch(Exception e){
			e.printStackTrace();
		}finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
			response.sendRedirect("/web04/bbs/list.jsp");
		}
	%>



</body>
</html>