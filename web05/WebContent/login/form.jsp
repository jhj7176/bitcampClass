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
<center>
<h1>LOGIN</h1>


<br>
<form action = "result.jsp">

<table>
<%
System.out.println(session.getAttribute("name"));
String param = request.getParameter("err");
if(param!=null){
%>

<tr align = "center">
<td colspan="2"> id, pw Check Please</td>
</tr>

<%
}else{
%>
<tr><td>&nbsp;</td></tr>

<%	
}
%>

<tr>
<th width = "70" style="color: white;" bgcolor="#ff6e6e">id</th>
<td><input type ="text" name = "id"></td>
</tr>
<tr>
<th  width = "70"  style="color: white;" bgcolor="#ff6e6e">pw</th>
<td><input type ="password" name = "pw"></td>

<tr align = "center">
<td colspan="2">
<input type ="submit" value = "Login">
<input type ="reset" value = "Reset">
<input type ="submit" name = "join" value = "Join">
</td>
</tr>



</table>
</form>
</center>





<br><br>
<br><br>
	
<%@ include file = "../template/footer.jspf"%>

</body>
</html>