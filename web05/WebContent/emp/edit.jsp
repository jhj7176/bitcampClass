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
String sabun = request.getParameter("sabun");
System.out.println(sabun);
if(name==null) name = "";
%>
	<h1 align = "center">EDIT PAGE</h1>
		<center>
	<form action="reinsert.jsp">
		<table border = "0">
		<tr>

		<th width= "70" style="color: white;" bgcolor="#ff6e6e" colspan="1">name</th>
		<td colspan="3">
		<input type = "hidden" name = "sabun" value =<%=sabun%>> 
		<input type = "text" name ="name" value = "<%=name%>">
		</td>

		</tr>

		<tr>
		<th colspan="1" style="color: white;" bgcolor="#ff6e6e">pay</th>
		<td colspan="3"><input type = "text" name ="pay"></td>
		</tr>


		<tr align = "center">
		<td></td>
		<td>
		<input type="submit" name = "edit" value = "Edit">
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