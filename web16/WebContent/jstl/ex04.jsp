<%@page import="com.bit.model.Javabean"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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

	<h1>반복문</h1>
	<%
		String[] msgs = { "java", "DB", "web", "framwork" };
		pageContext.setAttribute("msgs", msgs);
	
		ArrayList<String> list = new ArrayList<String>();
		list.add("JAVA");
		list.add("DB");
		list.add("WEB");
		list.add("FRAMEWORK");
		pageContext.setAttribute("alist", list);
	
		HashSet<String> set = new HashSet<String>();
		set.add("JAVA");
		set.add("DB");
		set.add("WEB");
		set.add("FRAMEWORK");
		pageContext.setAttribute("hset", set);
		
	
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("key1","JAVA");
		map.put("key2","DB");
		map.put("key3","WEB");
		map.put("key4","FRAMEWORK");
		pageContext.setAttribute("hmap", map);
		
	
		
		
		ArrayList<Javabean> beans = new ArrayList<Javabean>();
		Javabean bean = new Javabean();
		
		bean.setSu1(1234);
		bean.setSu2(43.591);
		bean.setName("asdfasdaf");
		beans.add(bean);
		
		bean = new Javabean();
		
		bean.setSu1(7654);
		bean.setSu2(4342.463);
		bean.setName("황조롱이");
		beans.add(bean);
		
		bean = new Javabean();
		
		bean.setSu1(5321);
		bean.setSu2(99.777);
		bean.setName("딱다구리");
		beans.add(bean);
		pageContext.setAttribute("beans", beans);
	%>

	<ol>
		<c:forEach items="${msgs }" varStatus="status" var="ele" >
			<li>${msgs[status.index] } - ${ele }</li>

		</c:forEach>
	</ol>

	<ol>
		<c:forEach items="${alist }" varStatus="status" var="ele">
			<li>${alist.get(status.index) } - ${ele }</li>

		</c:forEach>
	</ol>
	
	<ul>
		<c:forEach items="${hset }" varStatus="status" var="ele">
			<li>${ele } - ${status.index }</li>

		</c:forEach>
	</ul>
	<ul>
		<c:forEach items="${hmap }" varStatus="status" var="ele">
			<%-- <li>${ele } - ${status.index }</li>
			<li>${ele.key } - ${status.index }</li>
			<li>${ele.value } - ${status.index }</li> --%>
			<li>${ele.key }:${ele.value }</li>

		</c:forEach>
	</ul>

	<c:forEach items="${beans }" var="dto">
	
		<dl>
		<dt>su1</dt>
		<dd>${dto.su1}</dd>
		<dt>su2</dt>
		<dd>${dto.su2}</dd>
		<dt>name</dt>
		<dd>${dto.name}</dd>
		
		
		</dl>
	</c:forEach>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>