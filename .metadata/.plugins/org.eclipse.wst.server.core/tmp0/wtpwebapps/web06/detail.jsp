<%@page import="com.bit.emp.dto.Emp02Bean"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
int sabun;

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%@ include file = "template/header.jspf"%>
<%@ include file = "template/menu.jspf"%>	
	
	<h1 align ="center">DETAIL PAGE</h1>

<br><br>
	<%
	
	
	com.bit.emp.Emp02Detail emp = new com.bit.emp.Emp02Detail();
	sabun=Integer.parseInt(request.getParameter("idx"));

	
	Emp02Bean bean = emp.detail(sabun);
	
	String name=null;
	java.sql.Date hiredate = null;
	int pay = 0;
	
	String sql = "select * from emp02 where sabun = "+sabun;
	
	try{
		conn = DriverManager.getConnection(url, info);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
	
		if(rs.next()){
			name = rs.getString("name");
			hiredate = rs.getDate("hiredate");
			pay = rs.getInt("pay");
		}
		
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(stmt!=null) stmt.close();
		if(conn!=null) conn.close();
	}
	
	%>
	<center>
	
	<table width = "50%" >
	
	<tr align = "center">
	<th style="color: white;" bgcolor="#ff6e6e">sabun</th>
	<td><%=bean.getSabun()%></td>
	</tr>
	<tr align = "center">
	<th style="color: white;" bgcolor="#ff6e6e">name</th>
	<td><%=bean.getName()%></td>
	</tr>
	<tr align = "center">
	<th style="color: white;" bgcolor="#ff6e6e">hiredate</th>
	<td><%=bean.getHiredate() %></td>
	</tr>
	<tr align = "center">
	<th style="color: white;" bgcolor="#ff6e6e">pay</th>
	<td><%=bean.getPay() %></td>
	</tr>

	<tr align = "center">
<!-- ���� ���� �ڷΰ��� ��ư �����. -->
	<td colspan="2">	
	<a href = "edit.jsp?sabun=<%=sabun%>"><button>Edit</button></a>
	<a href = "delete.jsp?sabun=<%=sabun%>"><button>Delete</button></a>
	<a href = "list.jsp"><button>Back</button></a>
	</td></tr>
	
	</table>

</center>



<br><br>
<br><br>
	
<%@ include file = "template/footer.jspf"%>
</body>
</html>