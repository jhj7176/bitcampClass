<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page trimDirectiveWhitespaces="true"%>

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
			<td align = "center" colspan="6">
				<center>
					<h1>WRITE PAGE</h1>


					<form action="insert.jsp">
						<table border ="0" width="600" align="center">

							<tr align= "center">
								<th bgcolor="#fafad2">title</th>
								<td><textarea cols="80" rows="1" name = "sub"></textarea></td>						
							</tr>


							<tr align= "center">
								<th bgcolor="#fafad2">writer</th>
								<td><textarea cols="80" rows="1" name="id"></textarea></td>
							
							</tr>


							<tr align= "center">
								<th bgcolor="#fafad2">contnt</th>
								<td><textarea cols="80" rows="10" name = "content"></textarea></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td align = "center"><input type="submit" value="write"> <input
									type="reset" value="cancel">					
					
								<form action = "list.jsp">
								<button>back</button>	</form>
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
			<td colspan="4" bgcolor="#eee8aa">��Ʈķ�� ����� ���ʱ� ������� 459 (���ʵ�,
				��Ϻ���)�� ����ڵ�Ϲ�ȣ : 214-85-24928 <br>(��)��Ʈ��ǻ�� ���ʺ��� ��ǥ�̻� : ������ / ����
				: 02-3486-9600 / �ѽ� : 02-6007-1245 <br> ����Ǹž� �Ű���ȣ : ��
				����-00098ȣ / ����������ȣ����å���� : ������<br> Copyright (c) ��Ʈķ�� All rights
				reserved.
			</td>
			<td bgcolor="#eee8aa" width="250"></td>
		</tr>




	</table>



</body>
</html>