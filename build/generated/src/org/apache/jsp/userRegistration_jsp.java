package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class userRegistration_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Registration Form</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>User Registration Form</h1><br>\n");
      out.write("        <form method=\"post\" action=\"processRegistration.jsp\">\n");
      out.write("            User ID: <input type=\"text\" name=\"userid\" value=\"\"><br>\n");
      out.write("            Password: <input type=\"password\" name=\"pwd\" value=\"\"><br>\n");
      out.write("            Email ID: <input type=\"text\" name=\"emailid\" value=\"\"><br>\n");
      out.write("            \n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label for=\"exampleInputName\">User ID</label>\n");
      out.write("                <input type=\"text\" name=\"userid\" class=\"form-control\" id=\"exampleInputName\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label for=\"exampleInputPassword\">Password</label>\n");
      out.write("                <input type=\"password\" name=\"pwd\" class=\"form-control\" id=\"exampleInputPassword\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("                <label for=\"exampleInputEmail\">Email ID</label>\n");
      out.write("                <input type=\"text\" name=\"emailid\" class=\"form-control\" id=\"exampleInputEmail\">\n");
      out.write("            </div>\n");
      out.write("            <button type=\"submit\" class=\"btn btn-default\">Login</button>\n");
      out.write("            <input class=\"btn btn-primary\" type=\"reset\" value=\"Reset\">\n");
      out.write("            <br>\n");
      out.write("            <h1>Already Registered? </h1> <a href=\"index.jsp\">Click here</a>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
