/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.104
 * Generated at: 2020-07-01 11:41:44 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.emp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class edit_jsp extends org.apache.jasper.runtime.HttpJspBase
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


	request.setCharacterEncoding("EUC-KR");

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	String driver = "oracle.jdbc.driver.OracleDriver";

			String empno = request.getParameter("empno");
	//		String dname = new String(request.getParameter("dname").getBytes("ISO-8859-1"), "EUC-KR");
	//		String loc = new String(request.getParameter("loc").getBytes("ISO-8859-1"), "EUC-KR");

	String sql = "select empno,ename,job,mgr,hiredate,sal,comm,";
	sql+="(select dname from dept where dept.deptno = emp.deptno) from emp where empno = "+empno;

	Class.forName(driver);
	Properties info = new Properties();
	info.setProperty("user", user);
	info.setProperty("password", password);
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=EUC-KR\">\r\n");
      out.write("<title>EMP table</title>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("a {\r\n");
      out.write("\ttext-decoration: none\r\n");
      out.write("}\r\n");
      out.write("table {}\r\n");
      out.write("\t\t\ttd {\r\n");
      out.write("\t\t\t\tpadding: 10px;\r\n");
      out.write("\t\t\t\tborder: 1px solid #666666;\r\n");
      out.write("\t\t\t}\r\n");
      out.write(".button {\r\n");
      out.write("    /* To position the buttons to the same position of the text fields */\r\n");
      out.write("    padding-left: 90px; /* same size as the label elements */\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("button {\r\n");
      out.write("    /* This extra margin represent roughly the same space as the space\r\n");
      out.write("       between the labels and their text fields */\r\n");
      out.write("    margin-left: .5em;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<table width=\"100%\">\r\n");
      out.write("\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td colspan=\"6\"><img src=\"../img/img2.png\">\r\n");
      out.write("\t\t\t<img src=\"../img/char.png\"></td>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<!-- head -->\r\n");
      out.write("\t\t<tr align = \"center\">\r\n");
      out.write("\t\t\t<td bgcolor=\"#eee8aa\" width=\"300\"></td>\r\n");
      out.write("\t\t\t<td bgcolor=\"#eee8aa\" width=\"100\"><a href=\"../index.jsp\">HOME</a></td>\r\n");
      out.write("\t\t\t<td bgcolor=\"#eee8aa\" width=\"100\"><a href=\"../dept/list.jsp\">DEPT</a></td>\r\n");
      out.write("\t\t\t<th bgcolor=\"#eee8aa\" width=\"100\"><a href=\"list.jsp\">E M P</a></th>\r\n");
      out.write("\t\t\t<td bgcolor=\"#eee8aa\" width=\"100\"><a href=\"../login/list.jsp\">LOGIN</a></td>\r\n");
      out.write("\t\t\t<td bgcolor=\"#eee8aa\" width=\"300\"></td>\r\n");
      out.write("\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<!-- menubar -->\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<!-- contents start -->\r\n");
      out.write("\t\t\t<td colspan=\"6\">\r\n");
      out.write("\t\t\t\t<center>\r\n");
      out.write("\t\t\t\t\t<h1>EDIT PAGE</h1>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<table width=\"800\" border=\"0\" cellspacing=\"0\" align = \"center\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							try {
								conn = DriverManager.getConnection(url, info);
								stmt = conn.createStatement();
								rs = stmt.executeQuery(sql);
								int cnt = 0;
						if (rs.next()) {
							String bg = "";
							bg = "bgcolor=\"#fafad2\"";
									
						
      out.write("<form action =\"update.jsp\">\r\n");
      out.write("\t\t\t\t\t\t<tr align=\"center\">\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<td ");
      out.print( bg );
      out.write(">EMPNO</td>\t\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"text\" name=\"empno\" value = \"");
      out.print( rs.getInt(1));
      out.write("\" readonly = \"readonly\"></td>\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<tr align=\"center\">\t\t\r\n");
      out.write("\t\t\t\t\t\t<td ");
      out.print( bg );
      out.write(">ENAME</td>\t\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"text\" name=\"ename\" value = \"");
      out.print( rs.getString(2));
      out.write("\"></td>\t\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t<td ");
      out.print( bg );
      out.write(">JOB</td>\t\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"text\" name=\"job\" value = \"");
      out.print( rs.getString(3));
      out.write("\"></td>\t\r\n");
      out.write("\t\t\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t<td ");
      out.print( bg );
      out.write(">MGR</td>\t\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"text\" name=\"mgr\" value = \"");
      out.print( rs.getInt(4));
      out.write("\"></td>\t\r\n");
      out.write("\t\t\t\t\t\t</tr>\t\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t<td ");
      out.print( bg );
      out.write(">HIREDATE</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print(rs.getDate(5) );
      out.write("</td>\t\r\n");
      out.write("\t\t\t\t\t\t</tr>\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t<td ");
      out.print( bg );
      out.write(">SAL</td>\t\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"text\" name=\"sal\" value = \"");
      out.print( rs.getInt(6));
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</tr>\t\t\r\n");
      out.write("\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t<td ");
      out.print( bg );
      out.write(">COMM</td>\t\r\n");
      out.write("\t\t\t\t\t\t<td><input type=\"text\" name=\"comm\" value = \"");
      out.print( rs.getInt(7));
      out.write("\"></td>\t\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t\t\t\t<td ");
      out.print( bg );
      out.write(">DNAME</td>\r\n");
      out.write("\t\t\t\t\t\t<td>");
      out.print(rs.getString(8) );
      out.write("</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<td colspan=\"2\"  align=\"center\">\r\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"수 정\">\r\n");
      out.write("\t\t\t\t\t<button type=\"submit\">수 정</button>\r\n");
      out.write("\t\t\t\t\t<input type=\"reset\" value=\"초기화\">\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t");

							}//if
							} catch (Exception e) {
								e.printStackTrace();
							} finally {
								if (stmt != null)
									stmt.close();
								if (conn != null)
									conn.close();
							}
						
      out.write("</form>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t</center>\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<!-- contents end-->\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<td bgcolor=\"#eee8aa\" colspan=\"6\" face=\"white\">비트캠프 서울시 서초구 강남대로\r\n");
      out.write("\t\t\t\t459 (서초동, 백암빌딩)｜ 사업자등록번호 : 214-85-24928 <br>(주)비트컴퓨터 서초본원 대표이사\r\n");
      out.write("\t\t\t\t: 조현정 / 문의 : 02-3486-9600 / 팩스 : 02-6007-1245 통신판매업 신고번호 : 제\r\n");
      out.write("\t\t\t\t서초-00098호 / 개인정보보호관리책임자 : 최종진<br> Copyright (c) 비트캠프 All rights\r\n");
      out.write("\t\t\t\treserved.\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<!-- footer -->\r\n");
      out.write("\t</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
