<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page trimDirectiveWhitespaces="true"%>


<%
	request.setCharacterEncoding("EUC-KR");
	String replyNum = request.getParameter("num");
	//String replyId = request.getParameter("id");
	//String replySub = request.getParameter("sub");
	//String replySub = new String(request.getParameter("sub").getBytes("EUC-KR"), "ISO-8859-1");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>


<style type="text/css">
a {
	text-decoration: none
}
</style>
</head>
<body>

	<table width="1024" align="center">

		<tr>
			<td colspan="6"><img src="/web04/img/img2.png"> <img
				src="/web04/img/char.png"></td>
		</tr>
		<tr align="center">
			<td bgcolor="#eee8aa">&nbsp;</td>
			<td width="100" bgcolor="#eee8aa"><a href="/web04/">HOME</a></td>
			<th width="100" bgcolor="#eee8aa"><a href="/web04/bbs/list.jsp">B
					B S</a></th>
			<td width="100" bgcolor="#eee8aa"><a href="/web04/emp/list.jsp">E
					M P</a></td>
			<td width="100" bgcolor="#eee8aa"><a
				href="/web04/login/form.jsp">LOGIN</a></td>
			<td bgcolor="#eee8aa">&nbsp;</td>
		</tr>
		<tr>
			<!-- content start -->
			<td align="center" colspan="6">

				<center>
					<h1><%=replyNum%>th article's Reply
					</h1>


					<form action="reinsert.jsp" method = "post">   

						<input type = "hidden" name ="ref" value ="<%=request.getParameter("ref") %>" >
						<input type = "hidden"  name ="no" value ="<%=request.getParameter("no") %>">
						<input type = "hidden"  name = "lev"Value ="<%=request.getParameter("lev") %>">
						
						<table border="0" width="600" align="center">

							<tr align="center">
								<th bgcolor="#fafad2">title</th>
								<td><textarea cols="80" rows="1" name="sub"></textarea></td>
							</tr>


							<tr align="center">
								<th bgcolor="#fafad2">writer</th>
								<td><textarea cols="80" rows="1" name="id"></textarea></td>

							</tr>


							<tr align="center">
								<th bgcolor="#fafad2">contnt</th>
								<td><textarea cols="80" rows="10" name="content"></textarea></td>
							</tr>
							<tr>
								<td bgcolor = "#fafad2">&nbsp;</td>
								<td bgcolor = "#fafad2" align="center"><input type="submit" value="write">
									<input type="reset" value="cancel">
										<button><a href ="list.jsp">back</a></button>
							

									</td>

							</tr>

						</table>
					</form>
				</center>
			</td>
		</tr>
		<!-- content end -->
		<tr>
			<!-- footer -->
			<td bgcolor="#eee8aa" width="250"></td>
			<td colspan="4" bgcolor="#eee8aa">비트캠프 서울시 서초구 강남대로 459 (서초동,
				백암빌딩)｜ 사업자등록번호 : 214-85-24928 <br>(주)비트컴퓨터 서초본원 대표이사 : 조현정 / 문의
				: 02-3486-9600 / 팩스 : 02-6007-1245 <br> 통신판매업 신고번호 : 제
				서초-00098호 / 개인정보보호관리책임자 : 최종진<br> Copyright (c) 비트캠프 All rights
				reserved.
			</td>
			<td bgcolor="#eee8aa" width="250"></td>
		</tr>




	</table>



</body>
</html>