<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Scriptlet</title>
</head>
<body>
	<secsion> <%
 	int sum = 0;
 	for (int i = 0; i < 10; i++) {
 		sum += i + 1;
 	}
 %>
	<p>
		1���� 10������ ����
		<%=sum%>�Դϴ�.
	</p>
	</secsion>

	<secsion> <%
 	int sum2 = 0;
 	for (int i = 10; i < 20; i++) {

 		sum2 += i + 1;
 	}
 %>
	<p>
		11���� 20������ ����
		<%=sum2%>�Դϴ�.
	</p>
	</secsion>
	
	<p>1���� 20���� ���� <%=sum+sum2 %>�Դϴ�.</p>
</body>
</html>