<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EMP table</title>

<style type="text/css">
a {
	text-decoration: none
}

</style>

</head>
<body>


	<table width="1024"  align = "center">
	<tr>
			<td colspan="6"><img src="../img/img2.png">
			<img src="../img/char.png"></td>
		</tr>
		<!-- head -->
		<tr align = "center">
			<td bgcolor="#eee8aa" width="300"></td>
			<td bgcolor="#eee8aa" width="100"><a href="/web04/index.jsp">HOME</a></td>
			<td bgcolor="#eee8aa" width="100"><a href="/web04/dept/list.jsp">B B S</a></td>
			<td bgcolor="#eee8aa" width="100"><a href="/web04/emp/list.jsp">E M P</a></td>
			<th bgcolor="#eee8aa" width="100"><a href="/web04/login/form.jsp">LOGIN</a></th>
			<td bgcolor="#eee8aa" width="300"></td>

		</tr>
		<!-- menubar -->
		<tr>
			<!-- contents start -->
			<td colspan="6">
			
			<%-- 
			<img width="100%" alt="message" src="https://www.bitcamp.co.kr/images/ed/ed_img1.jpg">
			--%>
			<img width="100%" alt="message" src="../img/main.png">
			<table align="center">
				
						<tr>
							<td>empno</td>
							<td><input type="text" name="empno"><br></td>
						</tr>
						<tr>
							<td>job</td>
							<td><input type="text" name="job"><br></td>
						</tr>
						<tr>
							<td>password</td>
							<td><input type="text" name="password"> <br></td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								value="로그인"> <input type="submit" value="취 소"></td>
						</tr>
						
					</table>
			
			</td>
		</tr>
		<!-- contents end-->
		<tr>

			<td bgcolor="#eee8aa" colspan="6" face="white">비트캠프 서울시 서초구 강남대로 459 (서초동, 백암빌딩)｜
				사업자등록번호 : 214-85-24928 <br>(주)비트컴퓨터 서초본원 대표이사 : 조현정 / 문의 : 02-3486-9600
				/ 팩스 : 02-6007-1245 통신판매업 신고번호 : 제 서초-00098호 / 개인정보보호관리책임자 : 최종진<br>
				Copyright (c) 비트캠프 All rights reserved.</td>
		</tr>
		<!-- footer -->
	</table>



</body>
</html>