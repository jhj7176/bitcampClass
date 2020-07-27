package com.bit.step03;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.jws.soap.InitParam;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
<servlet>
<servlet-name>Ex07</servlet-name>
<servlet-class>com.bit.step01.Ex07</servlet-class>

<init-param>
  <param-name>msg1</param-name>
  <param-value>param 1111value</param-value>
  </init-param>



</servlet>

<servlet-mapping>
<servlet-name>Ex07</servlet-name>
<url-pattern>/ex07</url-pattern>
</servlet-mapping>
*/

//@WebServlet("/ex11.bit")
@WebServlet(value="/ex11.bit", initParams= {
		@WebInitParam(name="ex11",value="ex11param111"),
		@WebInitParam(name="ex112",value="ex11param222"),
		@WebInitParam(name="ex113",value="ex11param333")
})
public class Ex11 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		PrintWriter out = resp.getWriter();
		
		Enumeration<String> en = getInitParameterNames();
		while(en.hasMoreElements()) {
		String param = getInitParameter(en.nextElement());
		out.print("<h1>annotation mapping  "+param+"</h1>");
		
		}
	}
	
	
}
