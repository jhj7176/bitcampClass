<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<h1 align="center">add page</h1>

	<form action="emp/insert.jsp">

		<table align="center">


			<tr align="center">
				<th>사번</th>
				<td><input type="text" name="sabun"></td>
			</tr>

			<tr align="center">
				<th>이름</th>
				<td><input type="text" name="name"></td>
			</tr>

			<tr align="center">
				<th>금액</th>
				<td><input type="text" name="pay"></td>
			</tr>

			<tr align="center">
				<td colspan="2"><input type="submit" value="submit">
				<input type="reset" value="reset"></td>
			</tr>


		</table>





	</form>



</body>
</html>