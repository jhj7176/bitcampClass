/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.104
 * Generated at: 2020-07-03 08:15:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class logoutMsg_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/login/../template/footer.jspf", Long.valueOf(1593762998802L));
    _jspx_dependants.put("/login/../template/header.jspf", Long.valueOf(1593764115146L));
    _jspx_dependants.put("/login/../template/menu.jspf", Long.valueOf(1593763521486L));
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

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=EUC-KR\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("a {\r\n");
      out.write("\ttext-decoration: none\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
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
      out.write("\t\t\t<td colspan=\"6\">\r\n");
      out.write("\t\t\t<img src=\"/web05/img/img2.png\">\r\n");
      out.write("\t\t\t<img src=\"/web05/img/char.png\">\r\n");
      out.write("\t\t\t<p align = \"right\">\r\n");
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
      out.write("\t\t\t</p>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t<td bgcolor=\"#ff6666\"> &nbsp;</td>\r\n");
      out.write("\t\t\t<th width=\"100\" bgcolor=\"#ff6666\"><a style= \"color:white;\" href=\"/web05/\">HOME</a></th>\r\n");
      out.write("\t\t\t<td width=\"100\" bgcolor=\"#ff6666\"><a style= \"color:white;\" href=\"/web05/emp/list.jsp\">E M P</a></td>\r\n");
      out.write("\t\t\t<td width=\"100\" bgcolor=\"#ff6666\"><a style= \"color:white;\" href=\"/web05/dept/list.jsp\">DEPT</a></td>\r\n");
      out.write("\t\t\t");

			
			//Object obj = session.getAttribute("name");
			if(obj == null){
			
      out.write("\r\n");
      out.write("\t\t\t<td width=\"100\" bgcolor=\"#ff6666\"><a style= \"color:white;\" href=\"/web05/login/form.jsp\">LOGIN</a></td>\r\n");
      out.write("\t\t\t");

			}else{
			
      out.write("\r\n");
      out.write("\t\t\t<td width=\"100\" bgcolor=\"#ff6666\"><a style= \"color:white;\" href=\"/web05/login/logout.jsp\">LOGOUT</a></td>\r\n");
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
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\t<h1 align = \"center\">LOGOUT</h1>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<br><br>\r\n");
      out.write("\t\r\n");
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
      out.write("\r\n");
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