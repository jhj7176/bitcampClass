<%@page import="java.util.ArrayList"%>
<%@page import="com.bit.emp.EmpDto"%>
<%@page import="com.bit.emp.EmpSQL"%>
<%@page import="com.bit.util.MyOracle"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page trimDirectiveWhitespaces="true"%>
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

<jsp:include page="../template/header.jsp"><jsp:param value="../" name="path"/></jsp:include>
<!-- ������Ϸ� ���� ���� �����ϰ� �ٽ� ���ƿͼ� �ڵ���� ������ 
�������� �̵��� ������ Ŭ���̾�Ʈ�� �����ʰ� list.jsp���� �� ������ �ڿ� Ŭ��� ������ ����. 

[%include file = ""%]�� �ش� ������ list.jsp�� �����ͼ� ������ �Ǳ� ������ �׼��±�ó�� ������ �� �̵��� ���� list.jsp�� �����ϰ�
Ŭ��� ������ ������. 

-->

<jsp:include page="../template/menu.jsp"><jsp:param value="../" name="path"/></jsp:include>



	<br>
	<br>
	<br>
	<h1 align="center">Detail Page</h1>

	<jsp:useBean id="bean" class="com.bit.emp.EmpDto"></jsp:useBean><!-- EmpDtoŸ�� bean ����-->
	<jsp:setProperty property="sabun" name="bean" />
	<!-- bean��ü(useBean id)�� �ʵ�sabun���� req.parameter���� �Է� -->
	<!--�ʵ�Ÿ�Կ� ���缭 ����, ���� �ڵ����� parse��  int�ʵ忡 ���ڳִ� �� ����. -->

	<%
		//usebean�±׸� �̿��ؼ� EmpDtoŸ�� bean���۷��� ������. 
		//detail�޼��带 �̿��ؼ� bean�� �Ķ���ͷ� ���� ����� ������� �Է���
		bean = EmpSQL.detail(bean.getSabun());

		int idx = bean.getSabun();
	%>



	<table width="45%" align="center">
		<tr>
			<td colspan="2" align="right"><a style="color: black;"
				href="delete.jsp"><button>Delete</button></a></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<th bgcolor="#6262d7" style="color: white;" width="120">Num</th>
			<td align="center" width="300"><%=bean.getSabun()%></td>
		</tr>
		<tr>
			<th bgcolor="#6262d7" style="color: white;">Name</th>
			<td align="center"><%=bean.getName()%></td>
		</tr>
		<tr>
			<th bgcolor="#6262d7" style="color: white;">HireDate</th>
			<td align="center"><%=bean.getHiredate()%></td>
		</tr>
		<tr>
			<th bgcolor="#6262d7" style="color: white;">Pay</th>
			<td align="center"><%=bean.getPay()%></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
		</tr>
		<tr>

			<td colspan="2" align="right"><a style="color: black;"
				href="edit.jsp?sabun=<%=idx%>&name=<%=bean.getName()%>>&pay=<%=bean.getPay()%>"><button>Edit</button></a>
				<a style="color: black;" href="list.jsp"><button>Back</button></a></td>
		</tr>

	</table>
	<br>
	<br>
	<br>


<jsp:include page="../template/footer.jsp"><jsp:param value="../" name="path"/></jsp:include>



</body>
</html>