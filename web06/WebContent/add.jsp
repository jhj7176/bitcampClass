<%@page import="com.bit.emp.Emp02Insert"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>

a{
text-decoration:none;
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


	if("POST".equals(request.getMethod())){
		try{		
		request.setCharacterEncoding("euc-kr");
		sabun = Integer.parseInt(request.getParameter("sabun"));
		name = request.getParameter("name");
		pay = Integer.parseInt(request.getParameter("pay"));


		
		Emp02Insert emp = new Emp02Insert();
		emp.insert(sabun, name, pay);
		response.sendRedirect("list.jsp");
		return;
		}catch(Exception e){
			
		}
		
	}//if

	try{
	String back = request.getParameter("back");
	if(back.equals("글목록"))response.sendRedirect("list.jsp");
	}catch(Exception e){}

	
%>



	<h1 align = "center">사원등록</h1>
	
	<form method ="post">
	<table border ="0"  width = "400" align = "center">
	
	<tr>
	<td style="color:white;" colspan="2"><h1>글쓰기</h1></td>
	</tr>
	
	<tr align = "center">
	<td  style="color:white;" bgcolor="#ff6666" width = "150">사번</td>
	<td><textarea name = "sabun" rows="1" cols="40" placeholder="사번을 입력해 주세요." ></textarea></td>
	</tr>
	
	<tr align = "center">
	<td  style="color:white;" bgcolor="#ff6666" >이름</td>
	<td><textarea name="name" rows="1" cols="40" placeholder="이름을 입력해 주세요." ></textarea></td>
	</tr>
	<tr align = "center">
	<td  style="color:white;" bgcolor="#ff6666" >연봉</td>
	<td><textarea name="pay" rows="1" cols="40" placeholder="연봉을 입력해 주세요." ></textarea></td>
	</tr>
	
	</tr>
	
	<tr align ="center"><td colspan="2">
	
	<input type="submit" value="글쓰기">
	<input type="reset" value="취소">
	<input type="submit" name= "back" value="글목록">
	
	</td></tr>

	</table>
	</form>
	<br><br><br>
	
	
	
<%@ include file="template/footer.jspf"%>
</body>
</html>