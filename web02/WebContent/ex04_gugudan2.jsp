<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>	
<%@ page import="java.text.*" %>

<%@ page trimDirectiveWhitespaces="true"%>

<%
	SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd hh:mm");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<h1 align="center">������ ��� <%=sdf.format(new Date())%></h1>

	<table border="2" " align="center" width="100%">

		<tr align="center">
			<%
				for (int i = 2; i < 10; i++) {
					out.print("<td>"); //inner out object, �ܼ��� �ƴ϶� �������� �����. 
					out.print(i + "��");
					out.write("</td>".toCharArray());
					//write�� char[]�� �Ķ���ͷ� �����Ƿ� tochararray�� ��ȯ���ش�. 
					//�������� ���� ���� 

				}
			%>
		</tr>

		<%
			for (int i = 1; i < 10; i++) {
				int dan = 2;
				out.print("<tr align='center' height='60'>");

				for (int j = 1; j < 9; j++) {
						out.print("<td>");
						out.print(dan + "x" + i + "=" + dan * i);
						out.print("</td>");

						dan++;
					}//for
			out.print("</tr>");
			}//outFor
		%>

	</table>

</body>
</html>