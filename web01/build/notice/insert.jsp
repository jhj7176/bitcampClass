
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
	System.out.println("check");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	System.out.println("check222"+title+writer+content);

	if(title.isEmpty())title="제목없음";
	if(writer.isEmpty())writer="";
	title=title.replace("<", "&lt");	// 인젝션 공격 방지. 
	title=title.replace(">", "&gt");
	title=title.replace("--", "--");
	title=title.replace(" ", "&nbsp;");
	title=title.replace("'", "｀");
	content=content.replace("<", "&lt");	// 인젝션 공격 방지. 
	content=content.replace(">", "&gt");
	content=content.replace("--", "--");
	content=content.replace(" ", "&nbsp;");
	content=content.replace("'", "｀");
	
	
	try {
		String back = request.getParameter("back");
		if (back.equals("글목록")) {
			response.sendRedirect("list.jsp");
			return;
		}
	} catch (Exception e) {
		e.printStackTrace();
	}

	String sql = "insert into notice (num, title, writer, wtime, content, ref, no, lev) values (";
	sql += "notice_seq.nextval, '" + title + "', '" + writer + "', sysdate, '" + content + "', notice_seq.currval,0,0)";

	try {
		conn = DriverManager.getConnection(url, info);
		stmt = conn.createStatement();
		stmt.executeQuery(sql);
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