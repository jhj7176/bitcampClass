
<%@page import="com.bit.dept.DeptDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<jsp:useBean id="login" class="com.bit.dept.DeptDto" scope="session"></jsp:useBean>
<%
	String user = "scott";
	String pw = "tiger";
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	java.util.Properties info = new java.util.Properties();
	java.sql.Connection conn = null;
	java.sql.Statement stmt = null;
	java.sql.ResultSet rs = null;
	info.setProperty("user", user);
	info.setProperty("password", pw);
	Class.forName(driver);

	request.setCharacterEncoding("EUC-KR");
	DeptDto log = (DeptDto) session.getAttribute("login");
%>


<table border="0" width="100%">



	<%
		if (!log.isResult()) {
	%>
	<tr>
		<!-- login  -->
		<td colspan="5" style="text-align: right;"><a
			style="color: black; font-size: 60%;" href="../login/form.jsp">�α���</a>
			<a style="color: black; font-size: 60%;" href="../login/join.jsp">ȸ������</a></td>
	</tr>
	<%
		} else {
	%>
	<tr>
		<!-- login  -->
		<td colspan="5" style="text-align: right;"><a
			style="color: black; font-size: 60%;" href="#"><jsp:getProperty
					property="name" name="login" />�� ȯ���մϴ�.</a> <a
			style="color: black; font-size: 60%;" href="../login/logout.jsp">�α׾ƿ�</a></td>
	</tr>

	<%
		}
	%>
	<tr height="40">
		<!-- logo -->
		<td colspan="5"><a
			href="<%=request.getParameter("path")%>index.jsp"><img
				src="<%=request.getParameter("path")%>img/char.png"></a></td>

	</tr>
	
	
	
	
	
	
	
	
	
	