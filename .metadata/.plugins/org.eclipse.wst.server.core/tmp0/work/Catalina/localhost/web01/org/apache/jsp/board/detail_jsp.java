/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.104
 * Generated at: 2020-07-06 01:25:00 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.sql.DriverManager;

public final class detail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/board/../template/menu.jspf", Long.valueOf(1593998599931L));
    _jspx_dependants.put("/board/../template/footer.jspf", Long.valueOf(1593998599946L));
    _jspx_dependants.put("/board/../template/header.jspf", Long.valueOf(1593998678621L));
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"EUC-KR\">\n");
      out.write("<title>Insert title here</title>\n");
      out.write("<style>\n");
      out.write("a{\n");
      out.write(" text-decoration:none;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");

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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<table width=\"100%\">\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t");

	if(login==null){
	
	
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<!-- login  -->\n");
      out.write("\t\t\t<td colspan=\"5\" style=\"text-align: right;\">\n");
      out.write("\t\t\t<a style=\"color:black; font-size:60%;\" href=\"\">로그인</a>\n");
      out.write("\t\t\t<a  style=\"color:black; font-size:60%;\"href=\"\">회원가입</a></td>\n");
      out.write("\t\t</tr>\n");

	}else{
		
      out.write("\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t<!-- login  -->\n");
      out.write("\t\t\t<td colspan=\"5\" style=\"text-align: right;\">\n");
      out.write("\t\t\t<a style=\"color:black; font-size:60%;\" href=\"\">");
      out.print(login);
      out.write("님 환영합니다.</a>\n");
      out.write("\t\t\t<a style=\"color:black; font-size:60%;\" href=\"\">로그아웃</a></td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t\n");
      out.write("\t\t");
	
	}

      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<!-- logo -->\n");
      out.write("\t\t\t<td colspan=\"5\"><img src=\"/web01/img/logo.png\"></td>\n");
      out.write("\n");
      out.write("\t\t</tr>\n");
      out.write("    ");
      out.write('\n');
      out.write('	');
      out.write("\n");
      out.write("\n");
      out.write("    <tr align=\"center\">\n");
      out.write("\t\t\t<!-- menu -->\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\">&nbsp;</td>\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\" width=\"250\"><a style=\"color:white;\" href=\"/web01/index.jsp\">HOME</a></td>\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\" width=\"250\"><a style=\"color:white;\" href=\"/web01/notice/list.jsp\">NOTICE</a></td>\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\" width=\"250\"><a style=\"color:white;\" href=\"/web01/board/list.jsp\">FREE BOARD</a></td>\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\">&nbsp;</td>\n");
      out.write("\n");
      out.write("\t\t</tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<td colspan=\"5\">\n");
      out.write("\t\t\t<!-- contents start -->");
      out.write("\n");
      out.write("\n");
      out.write("\t<br>\n");
      out.write("\t<br>\n");
      out.write("\t<table border=\"0\" align=\"center\" width=\"700\">\n");
      out.write("\t\t");

			int ref = Integer.parseInt(request.getParameter("ref"));
			int no = Integer.parseInt(request.getParameter("no"));
			int lev = Integer.parseInt(request.getParameter("lev"));
			SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd hh:mm:ss");
			int num = Integer.parseInt(request.getParameter("num"));
			String writer = request.getParameter("writer");
		try {
			String sql = "select * from board where num =" + num;
			conn = DriverManager.getConnection(url, info);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				
				String creationTime = rs.getString("wtime").substring(0, rs.getString("wtime").indexOf("."));
				//게시글 작성 날짜. 년월일 시간분초
		
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<th align=\"center\" style=\"font-size: 150%;\">");
      out.print(rs.getString("title"));
      out.write("</th>\n");
      out.write("\t\t\t<!-- 제목 -->\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<tr bgcolor=\"#d2e1ff\">\n");
      out.write("\t\t\t<td>");
      out.print(rs.getString("writer"));
      out.write(" <!-- 작성자 --> &nbsp; ");
      out.print(creationTime);
      out.write("</td>\n");
      out.write("\t\t\t<!-- 날짜 -->\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<tr height=\"400\">\n");
      out.write("\t\t\t<td>");
      out.print(rs.getString("content").replace("\r\n", "<br>"));
      out.write("</td><!-- 개행처리 -->\n");
      out.write("\t\t\t<!-- 내용 -->\n");
      out.write("\t\t</tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t");

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		}
		
      out.write("\n");
      out.write("\n");
      out.write("\t</table>\n");
      out.write("\t<br>\n");
      out.write("\t<table align = \"center\">\n");
      out.write("\t<tr><td>\n");
      out.write("\t<a href = \"edit.jsp?num=");
      out.print(num);
      out.write("&writer=");
      out.print(writer);
      out.write("\"><button>수정</button></a>\n");
      out.write("\t<a href = \"reply.jsp?ref=");
      out.print(ref);
      out.write("&no=");
      out.print(no);
      out.write("&lev=");
      out.print(lev);
      out.write("\"><button>답글</button></a>\n");
      out.write("\t<a href = \"delete.jsp?num=");
      out.print( num);
      out.write("\"><button>삭제</button></a>\n");
      out.write("\t<a href = \"list.jsp\"><button>글목록</button></a>\n");
      out.write("\t</td></tr>\n");
      out.write("\t</table>\n");
      out.write("\t<br>\n");
      out.write("\t<br>\n");
      out.write("\t<br>\n");
      out.write("\n");
      out.write("\t");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t <!-- contents end -->\n");
      out.write("\t\t\t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<tr>\n");
      out.write("\t\t\t<!-- footer start-->\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\">&nbsp;</td>\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\" colspan=\"3\" align=\"center\" style=\"color:white;\">비트캠프 서울시 서초구 강남대로 459 (서초동,\n");
      out.write("\t\t\t\t백암빌딩)｜ 사업자등록번호 : 214-85-24928<br> (주)비트컴퓨터 서초본원 대표이사 : 조현정 / 문의\n");
      out.write("\t\t\t\t: 02-3486-9600 / 팩스 : 02-6007-1245<br> 통신판매업 신고번호 : 제 서초-00098호\n");
      out.write("\t\t\t\t/ 개인정보보호관리책임자 : 최종진<br> Copyright (c) 비트캠프 All rights reserved.<br>\n");
      out.write("\n");
      out.write("\t\t\t</td>\n");
      out.write("\t\t\t<td bgcolor = \"#6262d7\">&nbsp;</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t\t<!-- footer end -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\t</table>\n");
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
