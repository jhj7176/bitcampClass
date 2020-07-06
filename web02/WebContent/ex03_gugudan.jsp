<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<!-- 

String msg="";

for(int i = 1; i<10 ;  i++){

	msg += "<tr>";

	for(int j = 2; j<10; j++){

		msg+="<td>"+j+"x"+i+"="+i*j+"</td>";
	}

	msg+="</tr>";
}
-->



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1 align="center" >구구단 출력</h1>
	<table border="10" width="100%">
		<tr align="center">
			<%
				for (int i = 2; i < 10; i++) {
			%>
			<td height="60"><%=i%>단</td>
			<%
				}//for
			%>
		</tr>
		<%
			for (int i = 1; i < 10; i++) {
				int dan = 2;
		%>

		<tr align="center">
			<%
				for (int j = 1; j < 9; j++) {
			%>
			<td height="60"><%=dan%> x <%=i%> = <%=dan * i%></td>

			<%
				dan++;
					}//for
			%>
		</tr>
		<%
			}//outFor
		%>


	</table>


</body>
</html>