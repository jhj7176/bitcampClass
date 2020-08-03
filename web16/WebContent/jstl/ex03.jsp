<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>조건</h1>


	<%
		boolean tf = true;
	pageContext.setAttribute("tf", tf);
	%>
	<c:if test="${tf }">
		<p>참입니다.</p>
	</c:if>
	
	
	<c:if test="${5>3 }">
	<p>거짓입니다.</p>
	</c:if>
	
	<%
	int su = 0;
//	pageContext.setAttribute("su", su);
	%>
	
	
	
	<c:set value="2" var="su"></c:set>
	
	<c:if test="${su gt 0 }">
	<p>양수입니다.</p>
	</c:if>
	
	<c:if test="${su eq 0 }">
	<p>0 입니다.</p>
	</c:if>
	
	<c:if test="${su lt 0 }">
	<p>음수입니다.</p>
	</c:if>
	
	<c:set value="-1" var="su"></c:set>
	
	<c:choose>
	<c:when test="${su==1 }">su=1</c:when>
	<c:when test="${su<1 }">su=-xxxx</c:when>
	<c:when test="${su==0 }">su=0</c:when>
	<c:otherwise><p>몰라</p></c:otherwise>
	
	</c:choose>
	
	<c:forEach begin="7" end="15" var="su" varStatus="status">
	<p>${su }</p>
	<p>index = ${status.index } :0부터</p>
	<p>count = ${status.count } :1부터</p>
	<p>first = ${status.first } :첫번째인지 여부</p>
	<p>end = ${status.end } :for 마지막 번호</p>
	<p>begin = ${status.begin } :for 첫 번호</p>
	<p>step = ${status.step } :for문 증가값</p>
	
	</c:forEach>
	
	
	
	
</body>
</html>