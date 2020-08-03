<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../jquery/jquery-1.12.4.js">
	
</script>
<script type="text/javascript">
	/* $(function(){
	
	
	 $.ajax('ex02.bit',{
	 'method':'get',
	 'data':'msg2="ajax ex02.bit 변수전달"',
	 'success':function(data){
	
	 console.log('성공');
	 console.log(data);
	 },'error':function(){
	
	 console.log('실패');
	 }
	
	 });
	
	
	
	 });
	 */
</script>
</head>
<body>



	<h1>Expression Language</h1>
	<%
		/*
	Scope(범위): 변수를 사용할 수 있는 기간
	ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	변수의 라이프 사이클
	-> setAttribute(name, value)를 했을 때
	getAttribute(name) 메소드로 값을 읽어올 수 있는 범위
	ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ


	1) Page 범위: 하나의 JSP 페이지 안에서만 유지가 되는 범위
	2) Request 범위: 하나의 request 처리가 끝날 때까지 유지되는 범위
	3) Session 범위: 세션이 유지되는 동안 사용할 수 있는 범위
	4) Application 범위: 웹 애플리케이션이 실행되는 동안 유지되는 범위



	JSP의 내장 객체의 유효 범위:
	pageContext < request < session < application
	EL의 내장 객체의 유효 범위:
	pageScope < requestScope < sessionScope < applicationScope

	*/

	String msg = " el로 출력되나";
	String msg2 = "msg2222";

	String[] msgs = { "java", "db", "web", "framework" };
	pageContext.setAttribute("msg1", msg);
	pageContext.setAttribute("msg2", msg2);
	pageContext.setAttribute("msgs", msgs);
	//String msg2 = (String)request.getAttribute("msg2");

	ArrayList<String> list = new ArrayList<String>();
	list.add("JAVA");
	list.add("DB");
	list.add("WEB");
	list.add("FRAMEWORK");
	pageContext.setAttribute("alist", list);

	HashMap<String, Integer> map = new HashMap<String, Integer>();
	map.put("key1", 111);
	map.put("key2", 222);
	map.put("key3", 333);
	map.put("key4", 444);
	pageContext.setAttribute("hash", map);

	request.getAttribute("bean");
	%>
	<p>request scope --</p>



	<p>
		page scope(java):<%=pageContext.getAttribute("msg1")%></p>
	<p>page scope(el) : ${msg1}</p>

	<p>
		page scope(java):<%=pageContext.getAttribute("msg2")%></p>
	<p>page scope(el) : ${pageScope.msg2}</p>
	<p>
		page scope(java):<%=pageContext.getAttribute("msg2")%></p>
	<p>page scope(el) : ${reaquestScope.msg2}</p>
	<p>${ msg2 }</p>

	<p>array : ${msgs }</p>
	<p>arrayList : ${alist }</p>

	<ol>
		<li>${alist.get(0) }</li>
		<li>${alist.get(1) }</li>
		<li>${alist.get(2) }</li>
		<li>${alist.get(3) }</li>
	</ol>

	<p>Hashmap : ${hash }</p>

	<ol>
		<li>${hash.key1 }</li>
		<li>${hash.key2 }</li>
		<li>${hash.key3 }</li>
		<li>${hash.key4 }</li>

	</ol>

	<p>bean : ${bean }</p>

	<dl>

		<dt>su1</dt>
		<dd>${bean.su1}</dd>
		<!--자동으로 getter 호출.  -->
		<dt>su2</dt>
		<dd>${bean.su2}</dd>
		<dt>ch</dt>
		<dd>${bean.ch}</dd>
		<dt>name</dt>
		<dd>${bean.name}</dd>
		<dt>date</dt>
		<dd>${bean.hiredate}</dd>
		<dt>boolean</dt>
		<dd>${bean.tf?"참":"거짓"}</dd>
		<!-- 참이면 왼쪽 수행 거짓이면 오른쪽 수행 -->

	</dl>
	<p>
		bean:<%=request.getAttribute("bean")%></p>
	<p>${bean }</p>




</body>
</html>