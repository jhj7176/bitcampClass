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
<h1>actionTag <%=bean %></h1>

<jsp:forward page="result/ex03.jsp">
<jsp:param value="xyz" name="msg"/>
</jsp:forward>

<%

System.out.println(bean);
%>
<!-- ex03.jsp�� �ּҰ� �ٲ��� ���� http://localhost:8080/web09/ex02.jsp

cli < - >server ��û > ���� 

ex02��û > �������� ex03�������ΰ��� ex03�� ����� Ŭ���̾�Ʈ�� ����.
 
 �̹������� ������ �� 2���� ��û
 
 
 -->

</body>
</html>