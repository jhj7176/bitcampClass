<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page buffer = "8kb" autoFlush="false" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>



버퍼크기 : <%= out.getBufferSize() %><br>
남은크기 :	<%= out.getRemaining() %><br>
autoFlush :	<%= out.isAutoFlush() %>
<br><br>
서버정보 : <%=application.getServerInfo() %><br>
서블릿 메이저 버전 : <%=application.getMajorVersion() %><br>
서블릿 마이너 버전 : <%=application.getMinorVersion() %><br>


<%
application.log("로그메세지 기록");
%>
로그메세지 기록
</body>
</html>