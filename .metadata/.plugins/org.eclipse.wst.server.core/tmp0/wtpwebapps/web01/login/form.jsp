<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="../template/header.jspf"%>
	<%@ include file="../template/menu.jspf"%>


	<br>
	<br>
	<br>
	<br>


	<h1 align="center">login</h1>
	<form action="">
		<table border="0" align="center" width="200">

			<tr align="center" height="100">
				<td style="color: white;" bgcolor="#8c8cf5">id</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr align="center">
				<td style="color: white;" bgcolor="#8c8cf5">password</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr align="center">
				<td></td>
				<td><input type="submit" value="login"><input
					type="button" name="join" value="join"></td>

			</tr>

		</table>
	</form>


	<br>
	<br>
	<br>
	<br>


	<%@ include file="../template/footer.jspf"%>





</body>
</html>