<%@page import="com.bit.emp.model.Dept04Dto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../template/head.jspf"%>

<style rel="stylesheet" type="text/css">
#div_table {
	display: block;
	margin: auto;
}

#div_table>h2 {
	text-align: center;
}

#dept_table {
	width: 400px;
	border-collapse: collapse;
	border: 1px solid;
	margin: auto;
}

#dept_table tr {
	border-bottom: 1px solid;
	text-align: center;
}

#div_table>h2+a {
	diplay:block;
	width: 50px;
	height: 30px;
	margin:auto;
	text-align: center;
	line-height: 30px;
	border: 1px solid;
	cursor: pointer;
}
</style>
<script type="text/javascript" src="jquery/jquery-1.12.4.js"></script>
<script type="text/javascript">

</script>
</head>
<body>

	<%@include file="template/header.jspf"%>

	<%@include file="template/menu.jspf"%>


	<div id="content" class="grid_16">
		<!--  content start-->

		<div class=gird_12 id="div_table">
			<h2>Dept List Page</h2>

			<a href="add.bit">입력</a>
			
			<table id="dept_table">
				<tr>
					<th>deptno</th>
					<th>dname</th>
					<th>loc</th>
				</tr>
				<%
					ArrayList<Dept04Dto> list = (ArrayList<Dept04Dto>) request.getAttribute("list");
				for (int i = 0; i < list.size(); i++) {

					Dept04Dto bean = list.get(i);
				%>
				<tr>
					<td><%=bean.getDeptno()%></td>
					<td><%=bean.getDname()%></td>
					<td><%=bean.getLoc()%></td>
				</tr>
				<%
					}
				%>

				<c:forEach items="${list }" var="bean">
					<c:url value="detail.bit" var="detail">
						<c:param name="idx" value="${bean.deptno }"></c:param>
					</c:url>

					<tr>
						<td><a href="detail.bit?idx=${bean.deptno} ">${bean.deptno }</a></td>
						<td><a href="detail.bit?idx=${bean.deptno}">${bean.dname }</a></td>
						<td><a href="detail.bit?idx=${bean.deptno}">${bean.loc }</a></td>
					</tr>

				</c:forEach>


			</table>


		</div>


		<!--  content end-->
	</div>





	<%@include file="template/footer.jspf"%>


</body>
</html>