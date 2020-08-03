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
#detailForm {
	border: 1px solid;
}

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

#div_table+h2+a {
	diplay: inline-block;
	width: 50px;
	height: 30px;
	text-align: center;
	line-height: 30px;
	border: 1px solid;
	cursor: pointer;
}
</style>

<script type="text/javascript">

$(document).ready(function(){

	$(document).one('submit', '#detailForm', function() {
		alert('one');
		return false;
	});
	
	
	$(document).one('reset', '#detailForm', function() {
		alert('delete');
		return false;

	});
	
	
	
});
	
</script>

</head>
<body>

	<%@include file="template/header.jspf"%>

	<%@include file="template/menu.jspf"%>


	<div id="content" class="grid_16">
		<!--  content start-->

		<div class=gird_12 id="div_table">


			<h2>상세페이지</h2>
			<form action="#" method="post" id="detailForm"></form>

			<div>
				<label for="deptno">deptno</label> <input type="text" name="deptno"
					id="deptno" value="${bean.deptno }" readonly="readonly" />
			</div>
			<div>
				<label for="dname">dname</label> <input type="text" name="dname"
					id="dname" value="${bean.dname }" />
			</div>
			<div>
				<label for="loc">loc</label> <input type="text" name="loc" id="loc"
					value="${bean.loc }" />
			</div>

			<div>
				<button type="submit">수정</button>
				<button type="reset">리셋</button>
				<button type="button" onclick="history.back();">뒤로</button>

			</div>


		</div>


		<!--  content end-->
	</div>





	<%@include file="template/footer.jspf"%>


</body>
</html>