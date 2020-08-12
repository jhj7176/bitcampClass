<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h1>파일 업로드</h1>
<form method="post" action="upload.bit" enctype="multipart/form-data">
<!--  정보를 binary 데이터로 보낸다 get 방식으로는 길이제한, 특수문자 사용이 어려워 POST로 반드시!
	같은 이름의 파일을 업로드하면 서버에서 overwrite한다. 중복을 피하게 해야함.
	업로드 시간을 파일명에 추가 . 
	임의의 숫자를 파일명에 추가. 
-->
	<div>
		<label for="sabun">sabun</label>
		<input type="text" name="sabun" sabun="sabun"/>
	</div>
	<div>
		<label for="file1">file1</label>
		<input type="file" name="file1" id="file1"/>
	</div>
	<div>
		<button type="submit">upload</button>
	</div>




</form>



</body>
</html>