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
//	String loc = new String(request.getParameter("loc").getBytes("ISO-8859-1"), "EUC-KR");
	String sub = new String(request.getParameter("sub").getBytes("ISO-8859-1"), "EUC-KR");
	String id = new String(request.getParameter("id").getBytes("ISO-8859-1"), "EUC-KR");
	String content = new String(request.getParameter("content").getBytes("ISO-8859-1"), "EUC-KR");

	int ref = Integer.parseInt(request.getParameter("ref"));
	System.out.println(ref);
	int no = Integer.parseInt(request.getParameter("no"));
	int lev = Integer.parseInt(request.getParameter("lev"));
	
			System.out.println("ref="+ref);
			System.out.println("no="+no);
			System.out.println("lev="+lev);
	if (sub.isEmpty())
		sub = "제목없음";
	if (id.isEmpty())
		id = "";
	sub = sub.replace("<", "&lt"); // 인젝션 공격 방지. 
	sub = sub.replace(">", "&gt");
	sub = sub.replace("--", "--");
	//sub=sub.replace(" ", "&nbsp;");
	sub = sub.replace("'", "｀");
	try {
		conn = DriverManager.getConnection(url, info);
		stmt = conn.createStatement();
		
		if (lev == 0) {
			String sql = "insert into bbs01 (num,sub,id,nalja,content,ref,no,lev) values (bbs01_seq.nextval,";
			sql += "'" + sub + "','" + id + "',sysdate,'" + content+ "'," + ref+ ",(select max(no)+1 from bbs01 where ref =" + ref+ ")," + (lev + 1) + ")";
			stmt.executeQuery(sql);

		} else {
			
			String sql = "update bbs01 set no = no+1 where ref = "+ ref + "and no >"+no;
			//String sql = "execute bbs_update("+ref+","+no+")";
						//update bbs01 set no = no+1 where ref = ref and no > (select no+(select count(lev) from bbs01 where lev = (select max(lev) from bbs01)) from bbs01);
			stmt.executeQuery(sql);
			
			stmt = conn.createStatement();
			sql = "insert into bbs01 (num,sub,id,nalja,content,ref,no,lev) values (bbs01_seq.nextval,";
			sql += "'" + sub + "','" + id + "',sysdate,'" + content+ "'," + ref + "," + no + "+2, " + lev + "+1)";
			stmt.executeQuery(sql);
		}

	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (stmt != null)
			stmt.close();
		if (conn != null)
			conn.close();
		response.sendRedirect("/web04/bbs/list.jsp");
	}
	
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

</style>
</head>
<body>


</body>
</html>