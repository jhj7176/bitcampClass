<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
a {
	text-decoration: none;

}
</style>
</head>
<body>

	<table width="80%" align="center">

		<tr>
			<td colspan="6"><img src="img/char.png"></td>
		</tr>

		<tr align="center">
			<td bgcolor="#6262d7"></td>
			<td bgcolor="#6262d7"><a style="color: white;" href="?title=main">Home</a></td>
			<td bgcolor="#6262d7"><a style="color: white;" href="?title=intro">Intro</a></td>
			<td bgcolor="#6262d7"><a style="color: white;" href="?title=emp/list">Emp</a></td>
			<td bgcolor="#6262d7"><a style="color: white;" href="#">Login</a></td>
			<td bgcolor="#6262d7"></td>
		</tr>
		<br>
		<br>
		<tr align="center">
			<td colspan="6">
				<%
					String title = request.getParameter("title");
				if(title==null) title = "main";
					title += ".jsp";
				%> <jsp:include page="<%=title%>"></jsp:include>
				
			</td>
		</tr>


		<br>
		<br>
		<tr>
			<!-- footer start-->
			<td bgcolor="#6262d7">&nbsp;</td>
			<td bgcolor="#6262d7" colspan="4" align="center"
				style="color: white;">��Ʈķ�� ����� ���ʱ� ������� 459 (���ʵ�, ��Ϻ���)��
				����ڵ�Ϲ�ȣ : 214-85-24928<br> (��)��Ʈ��ǻ�� ���ʺ��� ��ǥ�̻� : ������ / ���� :
				02-3486-9600 / �ѽ� : 02-6007-1245<br> ����Ǹž� �Ű��ȣ : �� ����-00098ȣ /
				����������ȣ����å���� : ������<br> Copyright (c) ��Ʈķ�� All rights reserved.<br>

			</td>
			<td bgcolor="#6262d7">&nbsp;</td>
		</tr>








	</table>








</body>
</html>