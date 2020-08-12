<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="css/header.css" />

<style type="text/css">
body>fieldset {
	width: 300px;
}
div>input{
	
}
</style>
</head>
<body>
	<%@ include file="template/header.jspf"%>

	<h1>login form</h1>

	<fieldset>
		<legend>LOGIN</legend>
		<form method="post">
			<div>
				<label for="sabun">sabun</label> <input type="text" name="sabun"
					id="sabun" />
			</div>
			<div>
				<label for="name">name</label> <input type="text" name="name"
					id="name" />
			</div>

			<div>
				<input type="submit" value="login" /> <input type="reset"
					value="reset" />
			</div>
		</form>
	</fieldset>
</body>
</html>