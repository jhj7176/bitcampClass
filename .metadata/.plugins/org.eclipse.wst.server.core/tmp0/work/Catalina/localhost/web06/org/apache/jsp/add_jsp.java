/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.104
 * Generated at: 2020-07-06 08:24:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.bit.emp.Emp02Insert;

public final class add_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/template/header.jspf", Long.valueOf(1593996473756L));
    _jspx_dependants.put("/template/footer.jspf", Long.valueOf(1593762998802L));
    _jspx_dependants.put("/template/menu.jspf", Long.valueOf(1594018157168L));
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"EUC-KR\">\n");
      out.write("<title>Insert title here</title>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("\n");
      out.write("a{\n");
      out.write("text-decoration:none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");

  //	request.setCharacterEncoding("EUC-KR");

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	String driver = "oracle.jdbc.driver.OracleDriver";
	Class.forName(driver);
	java.util.Properties info = new java.util.Properties();
	info.setProperty("user", user);
	info.setProperty("password", password);
	java.sql.Connection conn = null;
	java.sql.Statement stmt = null;
	java.sql.ResultSet rs = null;  

      out.write("\r\n");
      out.write("      \r\n");
      out.write("<table border = \"0\" width=\"100%\" height = \"100%\" align=\"center\" bgcolor = \"white\">\r\n");
      out.write("\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td colspan=\"6\" >\r\n");
      out.write("\t\t\t<img src=\"/web06/img/img2.png\">\r\n");
      out.write("\t\t\t<img src=\"/web06/img/char.png\">\r\n");
      out.write("\t\t\t<table align = \"right\">\r\n");
      out.write("\t\t\t<tr><td>\r\n");
      out.write("\t\t\t<label>\r\n");
      out.write("\t\t\t");

			Object obj=null;
			try{
			 obj = session.getAttribute("name");
			//String loginName = (String)session.getAttribute("name");

			if(obj != null){
				String loginName = (String)obj;
				out.print(loginName+" login");
			}
			
			
			}catch(Exception e){
				
			}
			
      out.write("\r\n");
      out.write("\t\t\t</label></td></tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>");
      out.write('\n');
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t<td bgcolor=\"#ff6666\"> &nbsp;</td>\r\n");
      out.write("\t\t\t<th width=\"200\" bgcolor=\"#ff6666\"><a style= \"color:white;\" href=\"/web06/index.jsp\">HOME</a></th>\r\n");
      out.write("\t\t\t<td width=\"200\" bgcolor=\"#ff6666\"><a style= \"color:white;\" href=\"list.jsp\">E M P</a></td>\r\n");
      out.write("\t\t\t<td width=\"200\" bgcolor=\"#ff6666\"><a style= \"color:white;\" href=\"/web06/dept/list.jsp\">DEPT</a></td>\r\n");
      out.write("\t\t\t");

			
			//Object obj = session.getAttribute("name");
			if(obj == null){
			
      out.write("\r\n");
      out.write("\t\t\t<td width=\"200\" bgcolor=\"#ff6666\"><a style= \"color:white;\" href=\"/web06/login/form.jsp\">LOGIN</a></td>\r\n");
      out.write("\t\t\t");

			}else{
			
      out.write("\r\n");
      out.write("\t\t\t<td width=\"200\" bgcolor=\"#ff6666\"><a style= \"color:white;\" href=\"/web06/login/logout.jsp\">LOGOUT</a></td>\r\n");
      out.write("\t\t\t");

			}
			
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<td bgcolor=\"#ff6666\">&nbsp;</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td colspan=\"6\"> \r\n");
      out.write("\t\t<!-- content start -->\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t");
      out.write('\n');
      out.write('\n');
      out.write('\n');


int sabun = 0;
int pay = 0;
String name = null;


	if("POST".equals(request.getMethod())){
		try{		
		request.setCharacterEncoding("euc-kr");
		sabun = Integer.parseInt(request.getParameter("sabun"));
		name = request.getParameter("name");
		pay = Integer.parseInt(request.getParameter("pay"));


		
		Emp02Insert emp = new Emp02Insert();
		emp.insert(sabun, name, pay);
		response.sendRedirect("list.jsp");
		return;
		}catch(Exception e){
			
		}
		
	}//if

	try{
	String back = request.getParameter("back");
	if(back.equals("글목록"))response.sendRedirect("list.jsp");
	}catch(Exception e){}

	

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<h1 align = \"center\">사원등록</h1>\n");
      out.write("\t\n");
      out.write("\t<form method =\"post\">\n");
      out.write("\t<table border =\"0\"  width = \"400\" align = \"center\">\n");
      out.write("\t\n");
      out.write("\t<tr>\n");
      out.write("\t<td style=\"color:white;\" colspan=\"2\"><h1>글쓰기</h1></td>\n");
      out.write("\t</tr>\n");
      out.write("\t\n");
      out.write("\t<tr align = \"center\">\n");
      out.write("\t<td  style=\"color:white;\" bgcolor=\"#ff6666\" width = \"150\">사번</td>\n");
      out.write("\t<td><textarea name = \"sabun\" rows=\"1\" cols=\"40\" placeholder=\"사번을 입력해 주세요.\" ></textarea></td>\n");
      out.write("\t</tr>\n");
      out.write("\t\n");
      out.write("\t<tr align = \"center\">\n");
      out.write("\t<td  style=\"color:white;\" bgcolor=\"#ff6666\" >이름</td>\n");
      out.write("\t<td><textarea name=\"name\" rows=\"1\" cols=\"40\" placeholder=\"이름을 입력해 주세요.\" ></textarea></td>\n");
      out.write("\t</tr>\n");
      out.write("\t<tr align = \"center\">\n");
      out.write("\t<td  style=\"color:white;\" bgcolor=\"#ff6666\" >연봉</td>\n");
      out.write("\t<td><textarea name=\"pay\" rows=\"1\" cols=\"40\" placeholder=\"연봉을 입력해 주세요.\" ></textarea></td>\n");
      out.write("\t</tr>\n");
      out.write("\t\n");
      out.write("\t</tr>\n");
      out.write("\t\n");
      out.write("\t<tr align =\"center\"><td colspan=\"2\">\n");
      out.write("\t\n");
      out.write("\t<input type=\"submit\" value=\"글쓰기\">\n");
      out.write("\t<input type=\"reset\" value=\"취소\">\n");
      out.write("\t<input type=\"submit\" name= \"back\" value=\"글목록\">\n");
      out.write("\t\n");
      out.write("\t</td></tr>\n");
      out.write("\n");
      out.write("\t</table>\n");
      out.write("\t</form>\n");
      out.write("\t<br><br><br>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<!-- content end -->\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<tr align = \"center\">\r\n");
      out.write("\t\t\t<!-- footer start-->\r\n");
      out.write("\t\t\t<td bgcolor=\"#ff6666\" ></td>\r\n");
      out.write("\t\t\t<td style= \"color:white;\" colspan=\"4\" bgcolor=\"#ff6666\" >비트캠프 서울시 서초구 강남대로 459 (서초동,\r\n");
      out.write("\t\t\t\t백암빌딩)｜ 사업자등록번호 : 214-85-24928 <br>(주)비트컴퓨터 서초본원 대표이사 : 조현정 / 문의\r\n");
      out.write("\t\t\t\t: 02-3486-9600 / 팩스 : 02-6007-1245 <br> 통신판매업 신고번호 : 제 서초-00098호 /\r\n");
      out.write("\t\t\t\t개인정보보호관리책임자 : 최종진<br> Copyright (c) 비트캠프 All rights reserved.\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td bgcolor=\"#ff6666\" ></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- footer end-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t</table>\r\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
