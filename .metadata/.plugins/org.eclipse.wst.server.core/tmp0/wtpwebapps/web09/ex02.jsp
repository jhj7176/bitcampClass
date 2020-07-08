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
<!-- ex03.jsp로 주소가 바뀌지 않음 http://localhost:8080/web09/ex02.jsp

cli < - >server 요청 > 응답 

ex02요청 > 서버에서 ex03페이지로가서 ex03의 결과를 클라이언트에 전달.
 
 이미지까지 서버에 총 2번의 요청
 
 
 -->

</body>
</html>