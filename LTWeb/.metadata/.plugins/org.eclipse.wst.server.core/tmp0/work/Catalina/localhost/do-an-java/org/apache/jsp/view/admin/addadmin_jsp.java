/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.81
 * Generated at: 2022-06-30 17:19:06 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.view.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/Users/Di/Desktop/LTWeb/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/do-an-java/WEB-INF/lib/standard-1.1.2.jar!/META-INF/c.tld", Long.valueOf(1098685890000L));
    _jspx_dependants.put("/WEB-INF/lib/standard-1.1.2.jar", Long.valueOf(1656093238021L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
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

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write(" \r\n");
      out.write("\r\n");
      out.write("  <!-- Start header section --> \r\n");
      out.write("  ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./header/header.jsp", out, true);
      out.write(" \r\n");
      out.write("    <div class=\"content-wrapper\"> \r\n");
      out.write("      <div class=\"container-fluid\"> \r\n");
      out.write(" \r\n");
      out.write("        <div class=\"row mt-3\"> \r\n");
      out.write("          <div class=\"col-lg-8\"> \r\n");
      out.write("            <div class=\"card\"> \r\n");
      out.write("              <div class=\"card-body\"> \r\n");
      out.write("                <div class=\"card-title\">Thêm Admin</div> \r\n");
      out.write("                <hr> \r\n");
      out.write("                <form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/admin/admin/add\" method=\"post\"> \r\n");
      out.write("                           \r\n");
      out.write("                  <div class=\"form-group\"> \r\n");
      out.write("                    <label for=\"input-1\">Username</label> \r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"input-1\" placeholder=\"Username\"  name=\"admin-username\"> \r\n");
      out.write("                  </div> \r\n");
      out.write("                  <div class=\"form-group\"> \r\n");
      out.write("                    <label for=\"input-1\">Password</label> \r\n");
      out.write("                    <input type=\"password\" class=\"form-control\" id=\"myinput\" placeholder=\"Password\" name=\"admin-password\">\r\n");
      out.write("                    <input type=\"checkbox\" onclick=\"myFunction1()\">Hiển thị mật khẩu\r\n");
      out.write("                    <script>function myFunction1() {\r\n");
      out.write("                    	  var x = document.getElementById(\"myinput\");\r\n");
      out.write("                    	  if (x.type === \"password\") {\r\n");
      out.write("                    	    x.type = \"text\";\r\n");
      out.write("                    	  } else {\r\n");
      out.write("                    	    x.type = \"password\";\r\n");
      out.write("                    	  }\r\n");
      out.write("                    	}</script> \r\n");
      out.write("                  </div>                            \r\n");
      out.write("                 <div class=\"form-group\"> \r\n");
      out.write("                    <label for=\"input-1\">Tên Admin</label> \r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"input-1\" placeholder=\"Tên Admin\" name=\"admin-name\"> \r\n");
      out.write("                  </div>	\r\n");
      out.write("                  <div class=\"form-footer\"> \r\n");
      out.write("					  <button class=\"btn btn-danger\"><i class=\"fa fa-times\"></i><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/admin/admin/list\">Hủy</a></button>\r\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-success\"><i class=\"fa fa-check-square-o\"></i> Thêm</button>\r\n");
      out.write("                </div>  \r\n");
      out.write("                </form> \r\n");
      out.write("              </div> \r\n");
      out.write("            </div> \r\n");
      out.write("          </div> \r\n");
      out.write("        </div> \r\n");
      out.write("        <div class=\"overlay toggle-menu\"></div> \r\n");
      out.write("      </div> \r\n");
      out.write("    </div> \r\n");
      out.write("   \r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./footer/footer.jsp", out, true);
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