/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.104
 * Generated at: 2020-07-07 09:08:53 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.emp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import com.bit.emp.EmpDto;
import com.bit.emp.EmpSQL;
import com.bit.util.MyOracle;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"EUC-KR\">\n");
      out.write("<title>Insert title here</title>\n");
      out.write("<style>\n");
      out.write("a {\n");
      out.write("\ttext-decoration: none;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../template/header.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("path", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("../", request.getCharacterEncoding()), out, false);
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../template/menu.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("path", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("../", request.getCharacterEncoding()), out, false);
      out.write("<br>\n");
      out.write("\t<br>\n");
      out.write("\t<h1 align=\"center\">EMP List</h1>\n");
      out.write("\t<br>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t<table width = \"45%\" align=\"center\">\n");
      out.write("\t<tr><td colspan=\"4\"><a style = \"color:black;\" href=\"add.jsp\"><b>ADD</b></a></td></tr>\n");
      out.write("\t\t<tr align=\"center\">\n");
      out.write("\t\t\t<th>Num</th>\n");
      out.write("\t\t\t<th>Name</th>\n");
      out.write("\t\t\t<th>HireDate</th>\n");
      out.write("\t\t\t<th>Pay</th>\n");
      out.write("\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t");

			ArrayList<EmpDto> list = EmpSQL.list();
			for (int i = 0; i < list.size(); i++) {
				EmpDto bean = list.get(i);
		
      out.write("<tr align =\"center\">\n");
      out.write("\t\t\t<td>");
      out.print(bean.getSabun());
      out.write("</td>\n");
      out.write("\t\t\t<td><a style=\"color:black;\" href=\"detail.jsp?sabun=");
      out.print(bean.getSabun());
      out.write('"');
      out.write('>');
      out.print(bean.getName());
      out.write("</a></td>\n");
      out.write("\t\t\t<td>");
      out.print(bean.getHiredate());
      out.write("</td>\n");
      out.write("\t\t\t<td>");
      out.print(bean.getPay());
      out.write("</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t");

			}
		
      out.write("</table>\n");
      out.write("\t<br>\n");
      out.write("\t<br>\n");
      out.write("\t<br>\n");
      out.write("\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../template/footer.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("path", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("../", request.getCharacterEncoding()), out, false);
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