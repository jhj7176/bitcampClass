
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../template/header.jspf"%>
	<%
		int ref = Integer.parseInt(request.getParameter("ref"));
	int no = Integer.parseInt(request.getParameter("no"));
	int lev = Integer.parseInt(request.getParameter("lev"));
	System.out.println("check:" + ref + "," + no + "," + lev);
	String title = request.getParameter("title");
	String writer =request.getParameter("writer");
	String content =request.getParameter("content");
	System.out.println("check:" + title + "," + writer);

	try {
		String back = request.getParameter("back");
		if (back.equals("�۸��")) {
			response.sendRedirect("list.jsp");
			return;
		}
	} catch (Exception e) {
		//e.printStackTrace();
	}

	try {
		conn = DriverManager.getConnection(url, info);
			stmt = conn.createStatement();

		String sql = "insert into board (num, title, writer, wtime, content, ref, no, lev) values (";

		if (lev == 0) {

			sql += "board_seq.nextval, '" + title + "', '" + writer + "', sysdate, '" + content + "', "+ref+",";
			sql += "(select max(no)+1 from board where ref =" + ref + ")," + lev + "+1)";
			stmt.executeQuery(sql);
		} else {

			String sql2 = "update board set no = no+1";
			sql2 += " where ref = " + ref + " and no >" + no;
			System.out.println(sql2);
			stmt.executeQuery(sql2);
			stmt.close();

			sql += "board_seq.nextval, '" + title + "', '" + writer + "', sysdate, '" + content + "', "+ref+",";
			sql += no + "+1," + lev + "+1)";
			System.out.println(sql);
			stmt = conn.createStatement();
			stmt.executeQuery(sql);
			
		} //if
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		if (stmt != null)
			stmt.close();
		if (conn != null)
			conn.close();
		response.sendRedirect("list.jsp");
	}
	%>




</body>
</html>