/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.104
 * Generated at: 2020-07-02 09:33:48 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.bbs;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

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


	request.setCharacterEncoding("EUC-KR");

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";
	String driver = "oracle.jdbc.driver.OracleDriver";

	String word1 = request.getParameter("word");
	String key1 = request.getParameter("key");
	String key = key1;
	String word = word1;

	if (key == null) {
		key = "sub";
	} else {

		key = new String(key1.getBytes("ISO-8859-1"), "EUC-KR");
	}
	if (word == null) {
		word = "";
	} else {

		word = new String(word1.getBytes("ISO-8859-1"), "EUC-KR");
	}

	String sql = "select num,sub,id,nalja,lev from bbs01 where " + key
			+ " like '%" + word + "%' order by ref desc, no ";

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
      out.write("<title>Insert title here</title>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("a {\r\n");
      out.write("\ttext-decoration: none\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<table width=\"1024\" align=\"center\">\r\n");
      out.write("\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td colspan=\"6\"><img src=\"/web04/img/img2.png\"> <img\r\n");
      out.write("\t\t\t\tsrc=\"/web04/img/char.png\"></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr align=\"center\">\r\n");
      out.write("\t\t\t<td bgcolor=\"#eee8aa\">&nbsp;</td>\r\n");
      out.write("\t\t\t<td width=\"100\" bgcolor=\"#eee8aa\"><a href=\"/web04/\">HOME</a></td>\r\n");
      out.write("\t\t\t<th width=\"100\" bgcolor=\"#eee8aa\"><a href=\"/web04/bbs/list.jsp\">B\r\n");
      out.write("\t\t\t\t\tB S</a></th>\r\n");
      out.write("\t\t\t<td width=\"100\" bgcolor=\"#eee8aa\"><a href=\"/web04/emp/list.jsp\">E\r\n");
      out.write("\t\t\t\t\tM P</a></td>\r\n");
      out.write("\t\t\t<td width=\"100\" bgcolor=\"#eee8aa\"><a\r\n");
      out.write("\t\t\t\thref=\"/web04/login/form.jsp\">LOGIN</a></td>\r\n");
      out.write("\t\t\t<td bgcolor=\"#eee8aa\">&nbsp;</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<!-- content start -->\r\n");
      out.write("\t\t\t<td colspan=\"6\">\r\n");
      out.write("\t\t\t\t<center>\r\n");
      out.write("\t\t\t\t\t<h1>BOARD PAGE</h1>\r\n");
      out.write("\t\t\t\t\t<table>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr align=\"center\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<th width=\"50\" bgcolor=\"#eee8aa\">NUM</th>\r\n");
      out.write("\t\t\t\t\t\t\t<th width=\"400\" bgcolor=\"#eee8aa\">TITLE</th>\r\n");
      out.write("\t\t\t\t\t\t\t<th width=\"100\" bgcolor=\"#eee8aa\">ID</th>\r\n");
      out.write("\t\t\t\t\t\t\t<th width=\"120\" bgcolor=\"#eee8aa\">DATE</th>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

							try {
								conn = DriverManager.getConnection(url, info);
								stmt = conn.createStatement();
								rs = stmt.executeQuery(sql);
								int cnt = 0;
								while (rs.next()) {
									String bg = "";
									if(cnt++%2==1) bg = "bgcolor=\"#fafad2\"";
									
									int gap = rs.getInt(5);
									String msg ="";
									for(int i =0;i<gap; i++){
										msg+="&nbsp;&nbsp;&nbsp;";
									}
									if(gap!=0) msg +="└";
						
      out.write("<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td ");
      out.print(bg );
      out.write(" align=\"center\" width=\"100\"><a href = \"detail.jsp?num=");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(1));
      out.write("</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td ");
      out.print(bg );
      out.write(" width=\"100\"><a href = \"detail.jsp?num=");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(msg+rs.getString(2));
      out.write("</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td ");
      out.print(bg );
      out.write(" align=\"center\" width=\"100\"><a href = \"detail.jsp?num=");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(3));
      out.write("</a></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td ");
      out.print(bg );
      out.write(" align=\"center\" width=\"100\"><a href = \"detail.jsp?num=");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getDate(4));
      out.write("</a></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t");

								}//while
							} finally {
								if (stmt != null) {
									stmt.close();
								}
								if (conn != null) {
									conn.close();
								}
							}
						
      out.write("</table>\r\n");
      out.write("\t\t\t\t\t<table>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<form action=\"list.jsp\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<select name=\"key\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"sub\">title</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"id\">writer</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</select> <input type=\"text\" name=\"word\"> <input type=\"submit\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\tvalue=\"Search\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<form action=\"add.jsp\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<button>write</button>\r\n");
      out.write("\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</center>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<!-- content end -->\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<!-- footer -->\r\n");
      out.write("\t\t\t<td bgcolor=\"#eee8aa\" width=\"250\"></td>\r\n");
      out.write("\t\t\t<td colspan=\"4\" bgcolor=\"#eee8aa\">비트캠프 서울시 서초구 강남대로 459 (서초동,\r\n");
      out.write("\t\t\t\t백암빌딩)｜ 사업자등록번호 : 214-85-24928 <br>(주)비트컴퓨터 서초본원 대표이사 : 조현정 / 문의\r\n");
      out.write("\t\t\t\t: 02-3486-9600 / 팩스 : 02-6007-1245 <br> 통신판매업 신고번호 : 제\r\n");
      out.write("\t\t\t\t서초-00098호 / 개인정보보호관리책임자 : 최종진<br> Copyright (c) 비트캠프 All rights\r\n");
      out.write("\t\t\t\treserved.\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t\t<td bgcolor=\"#eee8aa\" width=\"250\"></td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
