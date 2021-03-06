<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page trimDirectiveWhitespaces="true"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<%

	int p = 1;
	String param = request.getParameter("page"); //페이지누르면 파라미터로 페이지번호 받음
	if(param != null){
		p = Integer.parseInt(param);
	}
	int startNum = 1+ (p-1)*20; // 1  11 21 31 41 ....
	int endNum = 20 +(p-1)*20;	// 10 20 30 40 50 .....
	String sql = "select * from (select rownum as rn, sabun, name, hiredate, pay from";
	sql+="(select * from emp01 order by sabun desc)) where rn between "+startNum+" and "+endNum;
	int cadinality = 0;
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

<%@ include file = "../template/header.jspf"%>
<%@ include file = "../template/menu.jspf"%>	
	<h1 align = "center">List Page</h1>
	<center>
	<a style= "color:#ff6d6e;" href ="add.jsp">ADD</a>
	</center>
	<br>
	<table width="70%" border="0" cellspacing="0" align="center">

		<tr align="center">
			<th style="color: white;" bgcolor="#ff6e6e">사번</th>
			<th style="color: white;" bgcolor="#ff6e6e">이름</th>
			<th  style="color: white;" bgcolor="#ff6e6e">입사일</th>
			<th  style="color: white;" bgcolor="#ff6e6e">연봉</th>
		</tr>
		<%
			try{
			 conn = DriverManager.getConnection(url, info);
			 stmt = conn.createStatement();
				rs = stmt.executeQuery("select count(*) from emp01");
				if(rs.next()) cadinality = rs.getInt(1);
				stmt.close();
				
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				int cnt = 0;
				while (rs.next()) {
					String bg = "";
					if (cnt++ % 2 == 1)
						bg = "bgcolor = \"#fac8c8\"";
		%>
		<tr align="center">
			<td <%=bg%>><a style="color: black;" href="detail.jsp?idx=<%=rs.getInt("sabun")%>"><%=rs.getInt("sabun")%></a></td>
			<td <%=bg%>><a style="color: black;" href="detail.jsp?idx=<%=rs.getInt("sabun")%>"><%=rs.getString("name")%></a></td>
			<td <%=bg%>><a style="color: black;" href="detail.jsp?idx=<%=rs.getInt("sabun")%>"><%=rs.getDate("hiredate")%></a></td>
			<td <%=bg%>><a style="color: black;" href="detail.jsp?idx=<%=rs.getInt("sabun")%>"><%=rs.getInt("pay")%></a></td>
		</tr>
		<%
				}//while
			} finally {
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			}
		%>

	</table>
	<br><br>
	<center>
	
<%
	//cadinality = 817;
	int left = cadinality%20;
	int leftPage = 0;
	if(left != 0) leftPage = 1;
	int limit = (cadinality-left)/20+leftPage;
	
	/*
	817
	40 페이지
	엔드 40
	
	1~10 페이지  일때는 엔드가 10 
	
	33
	
	3+나머지 
	
	1~10     %10 1  limit 10 
	11 20	 %10 2 	limit 20
	21	30	 %10 3  limit 30 
	
	*/
	int pageLang = 5;
	int start = 0;
	int leftEnd = 0;
	if(p%pageLang != 0) leftEnd  = 1;
	int end = ((p-p%pageLang)/pageLang+leftEnd)*pageLang;
	//int end = start + 10;
	
	if(p<pageLang+1){
		start = 0;
	}else{
		start = end-pageLang;
		out.print("<a style= \"color:#ff6d6e;\" href=\"list.jsp?page="+(end-pageLang)+"\"> [prev] </a>");
	}//if
	
	if(end > limit){
		end = limit;
		start = end - limit%pageLang;
	}//if
	
	for(int i = start; i< end; i++){
		%>
		
		<a style= "color:#ff6d6e;" href ="list.jsp?page=<%= i+1%>">[<%= i+1 %>]</a>
		
		<%	
	}//for
	
	if(end < limit){
	out.print("<a style= \"color:#ff6d6e;\" href=\"list.jsp?page="+(end+1)+"\"> [next] </a>");
	}
%>
</center>
<br><br>
	
<%@ include file ="../template/footer.jspf"%>

</body>
</html>