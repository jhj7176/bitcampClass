<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

<%
String name = request.getParameter("name");
if(name==null) name = "";

SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

Date date = new Date();

String time = sdf.format(date);

System.out.print(time);


%>
	<h1 align = "center">Welcome JOIN </h1>
		<center>
	<form action="insert.jsp">
		<table border = "0">
		
		<tr>
		<th colspan="1" style="color: white;" bgcolor="#ff6e6e">hiredate</th>
		<td colspan="3">
		<select>
		<%

for(int i =0; i<200; i++){		
		%>
		<option><%=time%></option>
<%
}
%>
		</select>
		
		</td>
		</tr>
		
		
		<tr>

		<th width= "70" style="color: white;" bgcolor="#ff6e6e" colspan="1">name</th>
		<td colspan="3"><input type = "text" name ="name" value = "<%=name%>"></td>

		</tr>

		<tr>
		<th colspan="1" style="color: white;" bgcolor="#ff6e6e">pay</th>
		<td colspan="3"><input type = "text" name ="pay"></td>
		</tr>

		
		<tr align = "center">
		<td></td>
		<td>
		<input type="submit" name = "add" value = "Join">
		</td>
		<td>
		<input type="reset" name = "reset" value = "Reset">
		</td>
		<td>
		<input type="submit" name = "back" value = "Back">
		</td>

		</tr>

		</table>
	</form>
	</center>


<br><br>
	
<%@ include file = "../template/footer.jspf"%>
</body>
</html>