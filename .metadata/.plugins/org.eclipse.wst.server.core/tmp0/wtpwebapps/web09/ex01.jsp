<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<jsp:useBean id="bean" class="test.Target" scope="request"></jsp:useBean>


	<h1>
		sendRedirect
		<%=bean%></h1>
	<%
		System.out.println(bean);
		response.sendRedirect("result/ex03.jsp?msg=asdf");
	%>

	<!-- �ּҰ� http://localhost:8080/web09/ex03.jsp�� �ٲ�鼭 ������ �̵� 
	
	cli < - >server ��û > ���� >��û >����
	
	Ŭ���̾�Ʈ�� ex01�� ��û >������ ex01�� ������ ���� > Ŭ���̾�Ʈ�� �����̷�Ʈ ��û > ������ �����̷�Ʈ ex03���� 


	�̹������� ������ �� 3�� ��û 
	-->

</body>
</html>