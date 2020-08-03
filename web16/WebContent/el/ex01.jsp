<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--
EL (Expression Language) 표현식.
JSTL (Jsp Standard Tag Library) 



  -->

	<h1>el문법</h1>

	<table>
		<tr>
			<th>연산</th>
			<th>java</th>
			<th>el</th>
			<th>el표기</th>
		</tr>
		<tr>
			<td>문자열</td>
			<td><%="출력" %></td>
			<td>${"출력" }</td>
			<td>＄{"출력"}</td><!--ㄹ+한자키 특수문자. 보이는 그대로 출력됨.   -->
		</tr>
		<tr>
			<td>숫자</td>
			<td><%=5436 %></td> <!--정수계산-->
			<td>${4365 }</td><!--실수계산  -->
			<td>＄{4365}</td>
		</tr>
		<tr>
			<td>연산</td>
			<td><%= 5*5.777777777777777 %></td>
			<td>${45*100/31 }</td>
			<td>＄{45*100/31}</td>
		</tr>
		<tr>
			<td>div</td>
			<td><%=234/44 %></td> 
			<%-- //<td>${1324 div 2231 }</td><!--실수계산  이클립스에러.--> --%>
			<td>＄{4365}</td>
		</tr>
		<tr>
			<td>mod</td>
			<td><%=234/44 %></td> 
			<td>${1324 mod 2231 }</td>
			<td>＄{4365}</td>
		</tr>


		<tr>
			<td>gt</td>
			<td><%=45 > 44 %></td> 
			<td>${1324 gt 2231 }</td>
			<td>＄{234 > 44}</td>
		</tr>
		<tr>
			<td>lt</td>
			<td><%=234 < 44 %></td> 
			<td>${1324 lt 2231 }</td>
			<td>＄{234  44}</td>
		</tr>
		<tr>
		<tr>
			<td>ge</td>
			<td><%=45 > 44 %></td> 
			<td>${1324 ge 2231 }</td>
			<td>＄{234 > 44}</td>
		</tr>
		<tr>
			<td>le</td>
			<td><%=234 < 44 %></td> 
			<td>${1324 le 2231 }</td>
			<td>＄{234  44}</td>
		</tr>
		
		
		<tr>
			<td>true</td>
			<td><%=true %></td> 
			<td>${true}</td>
			<td>＄{true}</td>
		</tr>
		<tr>
		
		
		<% String msg=null; %>
			<td>msg=null</td>
			<td><%= msg %></td> <!--null값이면 브라우저에 안나옴.  -->
			<td>${null }</td>
			<td>＄{msg}</td>
		</tr>




		</tr>
	</table>

</body>
</html>