/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.104
 * Generated at: 2020-07-04 09:06:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/template/header.jspf", Long.valueOf(1593852733806L));
    _jspx_dependants.put("/template/footer.jspf", Long.valueOf(1593834002846L));
    _jspx_dependants.put("/template/menu.jspf", Long.valueOf(1593837851200L));
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

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"EUC-KR\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<style>\r\n");
      out.write("a {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t");

String user ="scott";
String pw ="tiger";
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
java.util.Properties info = new java.util.Properties();
java.sql.Connection conn = null;
java.sql.Statement stmt = null;
java.sql.ResultSet rs = null;
info.setProperty("user", user);
info.setProperty("password", pw);
Class.forName(driver);

request.setCharacterEncoding("EUC-KR");

Object obj = session.getAttribute("name");
String login = null;
if(obj!=null) login = (String)obj;

      out.write("<table width=\"100%\">\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\t");

	if(login==null){
	
	
      out.write("<tr>\r\n");
      out.write("\t\t\t<!-- login  -->\r\n");
      out.write("\t\t\t<td colspan=\"5\" style=\"text-align: right;\">\r\n");
      out.write("\t\t\t<a style=\"color:black; font-size:60%;\" href=\"\">로그인</a>\r\n");
      out.write("\t\t\t<a  style=\"color:black; font-size:60%;\"href=\"\">회원가입</a></td>\r\n");
      out.write("\t\t</tr>\r\n");

	}else{
		
      out.write("<tr>\r\n");
      out.write("\t\t\t<!-- login  -->\r\n");
      out.write("\t\t\t<td colspan=\"5\" style=\"text-align: right;\">\r\n");
      out.write("\t\t\t<a style=\"color:black; font-size:60%;\" href=\"\">");
      out.print(login);
      out.write("님 환영합니다.</a>\r\n");
      out.write("\t\t\t<a style=\"color:black; font-size:60%;\" href=\"\">로그아웃</a></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t");
	
	}

      out.write("<tr>\r\n");
      out.write("\t\t\t<!-- logo -->\r\n");
      out.write("\t\t\t<td colspan=\"5\"><img src=\"/web01/img/logo.png\"></td>\r\n");
      out.write("\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("    ");
      out.write("<tr align=\"center\">\r\n");
      out.write("\t\t\t<!-- menu -->\r\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\">&nbsp;</td>\r\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\" width=\"250\"><a style=\"color:white;\" href=\"/web01/index.jsp\">HOME</a></td>\r\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\" width=\"250\"><a style=\"color:white;\" href=\"/web01/notice/list.jsp\">NOTICE</a></td>\r\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\" width=\"250\"><a style=\"color:white;\" href=\"/web01/board/list.jsp\">FREE BOARD</a></td>\r\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\">&nbsp;</td>\r\n");
      out.write("\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td colspan=\"5\">\r\n");
      out.write("\t\t\t<!-- contents start -->");
      out.write("<img width = \"100%\" src = \"img/main.png\">\r\n");
      out.write("\t");
      out.write("<!-- contents end -->\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<!-- footer start-->\r\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\">&nbsp;</td>\r\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\" colspan=\"3\" align=\"center\" style=\"color:white;\">비트캠프 서울시 서초구 강남대로 459 (서초동,\r\n");
      out.write("\t\t\t\t백암빌딩)｜ 사업자등록번호 : 214-85-24928<br> (주)비트컴퓨터 서초본원 대표이사 : 조현정 / 문의\r\n");
      out.write("\t\t\t\t: 02-3486-9600 / 팩스 : 02-6007-1245<br> 통신판매업 신고번호 : 제 서초-00098호\r\n");
      out.write("\t\t\t\t/ 개인정보보호관리책임자 : 최종진<br> Copyright (c) 비트캠프 All rights reserved.<br>\r\n");
      out.write("\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\">&nbsp;</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<!-- footer end -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t</table>\r\n");
      out.write("</body>\r\n");
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
