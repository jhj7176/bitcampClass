<%@page import="com.bit.emp.dto.Emp02Bean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bit.emp.Emp02List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
a {
	text-decoration: none;
}
</style>

</head>
<body>


	<%@ include file="template/header.jspf"%>
	<%@ include file="template/menu.jspf"%>


	<!-- contents start -->
		<h1 align = "center">목록</h1>
	
	<br><br>	<br><br>
	<table width = "50%" align = "center">
	
	<tr>
	<th><a style = "font-size:150%; color:black;" href= "add.jsp"> 입력 </a></th>
	</tr>
		<tr style = "font-size:150%;"  valign = "center">
			<th style="color:white;"  bgcolor= "#ff6666">사번</th>
			<th style="color:white;"  bgcolor= "#ff6666">이름</th>
			<th style="color:white;"  bgcolor= "#ff6666">입사일</th>
			<th style="color:white;"  bgcolor= "#ff6666">연봉</th>
		</tr>

		<%
		Emp02List emp = new Emp02List();	
		ArrayList<Emp02Bean> list = emp.list();
		
		for(int i=0; i<list.size();i++){
			Emp02Bean bean = list.get(i);
		
		%>


		<tr style = "font-size:130%;" align = "center">
			<td><a style="color:black;" href = "detail.jsp?idx=<%=bean.getSabun()%>"><%=bean.getSabun()%></a></td>
			<td><a style="color:black;" href = "detail.jsp?idx=<%=bean.getSabun()%>"><%=bean.getName() %></a></td>
			<td><%=bean.getHiredate() %></td>
			<td><%=bean.getPay() %></td>
		</tr>

		<%
		}
			
		%>


	</table>





<br><br><br><br><br><br><br><br><br>



	<%@ include file="template/footer.jspf"%>














</body>
</html>