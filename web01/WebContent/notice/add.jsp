<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jspf"%>
<%@ include file="../template/menu.jspf"%>
	<br><br>
	
	<form action = "insert.jsp">
	<table border ="0"  width = "700" align = "center">
	
	<tr>
	<td colspan="2"><h1>글쓰기</h1></td>
	</tr>
	
	<tr align = "center">
	<td bgcolor="#d2e1ff" width = "150">제목</td>
	<td><textarea name = "title" rows="1" cols="80" placeholder="제목을 입력해 주세요." ></textarea></td>
	</tr>
	
	<tr align = "center">
	<td bgcolor="#d2e1ff" >글쓴이</td>
	<td><textarea name="writer" rows="1" cols="80" placeholder="닉네임을 입력해 주세요." ></textarea></td>
	</tr>
	
	<tr>
	<td bgcolor="#d2e1ff" ></td>
	<td>
	<textarea name="content" rows="20" cols="80" wrap = "hard"></textarea>
	</td>
	</tr>
	
	<tr align ="right"><td colspan="2">
	
	<input type="submit" value="글쓰기">
	<input type="reset" value="취소">
	<input type="submit" name= "back" value="글목록">
	
	</td></tr>

	</table>
	</form>
	<br><br><br>
	
	
	
<%@ include file="../template/footer.jspf"%>
</body>
</html>