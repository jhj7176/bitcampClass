<%@page import="com.bit.emp.dto.Emp02Bean"%>
<%@page import="com.bit.emp.Emp02Insert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>
a {
	text-decoration: none;
}
</style>

</head>
<body>
	<%@ include file="template/header.jspf"%>
	<%@ include file="template/menu.jspf"%>


	<%
			int sabun = 0;
			int pay = 0;
			String name = null;
			String param = request.getParameter("idx");
			


			try {
				String back = request.getParameter("back");
				if (back.equals("글목록")){
					response.sendRedirect("list.jsp");
				return;}
			} catch (Exception e) {
			}
			
			if ("POST".equals(request.getMethod())) {

		try {
			request.setCharacterEncoding("euc-kr");
			sabun = Integer.parseInt(request.getParameter("sabun")
					.trim());
			name = request.getParameter("name").trim();
			pay = Integer.parseInt(request.getParameter("pay").trim());


			com.bit.emp.Emp02Update emp = new com.bit.emp.Emp02Update();
			emp.update(sabun, name, pay);
			int result = emp.update(sabun, name, pay);
			response.sendRedirect("detail.jsp?idx=" + sabun);
			return;
		} catch (NumberFormatException e) {
			response.sendRedirect("detail.jsp?idx=" + param);

		} catch(Exception e){return;}
			}


		com.bit.emp.Emp02Detail emp = new com.bit.emp.Emp02Detail();
		Emp02Bean bean = emp.detail(sabun);
	%>




	<form method="POST">
		<table border="0" width="400" align="center">

			<tr>
				<td style="color: black;" colspan="2"><h1>수정</h1></td>
			</tr>

			<tr align="center">
				<td style="color: white;" bgcolor="#ff6666" width="150">사번</td>
				<td><input type="text" name="sabun"
					value="<%=bean.getSabun()%>"></td>
			</tr>

			<tr align="center">
				<td style="color: white;" bgcolor="#ff6666">이름</td>
				<td><input type="text" name="name" value="<%=bean.getName()%>"></td>
			</tr>
			<tr align="center">
				<td style="color: white;" bgcolor="#ff6666">입사일</td>
				<td><input type="text" name="hiredate"
					value="<%=bean.getHiredate()%>"></td>
			</tr>
			<tr align="center">
				<td style="color: white;" bgcolor="#ff6666">연봉</td>
				<td><input type="text" name="pay" value="<%=bean.getPay()%>"></td>
			</tr>

			</tr>

			<tr align="center">
				<td colspan="2"><input type="submit" value="글쓰기"> <input
					type="reset" value="취소"> <input type="submit" name="back"
					value="글목록"></td>
			</tr>

		</table>
	</form>
	<br>
	<br>
	<br>



	<%@ include file="template/footer.jspf"%>
</body>
</html>