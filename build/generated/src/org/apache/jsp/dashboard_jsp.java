package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class dashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--validating user before loading page-->\n");
      out.write("        ");

            
            if((session.getAttribute("userid")==null) || (session.getAttribute("userid")=="")){
            
      out.write("\n");
      out.write("            <h1>  You are not logged in!<br></h1> <a href='index.jsp'>Try again</a>\n");
      out.write("            ");
}else{
            
      out.write("\n");
      out.write("        Admin: ");
      out.print(session.getAttribute("userid"));
      out.write("\n");
      out.write("        <a href='logout.jsp'>Sign off</></a>\n");
      out.write("        <h1>Dashboard Page! </h1>\n");
      out.write("        <a href='loginInfo.jsp'>Profile</></a><br>\n");
      out.write("        \n");
      out.write("        <h2>List of Books Available</h2>\n");
      out.write("        <h3>Choose Author!</h3>\n");
      out.write("        <form method=\"get\">\n");
      out.write("            <input type=\"checkbox\" name=\"author\" value=\"Balagurusamy\"> E. Balagurusamy\n");
      out.write("            <input type=\"checkbox\" name=\"author\" value=\"Shield\"> H. Shield\n");
      out.write("            <input type=\"submit\" value=\"Query\">\n");
      out.write("        </form>\n");
      out.write("        ");

            String sqlSt="";
            String[] authors = request.getParameterValues("author");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/UserDB","sanish","admin123");
            Statement stmt=conn.createStatement();
            
            if(authors!=null){
                sqlSt+="SELECT * FROM bookdetails where author IN(";
                sqlSt+="'"+authors[0]+"'";//First selected author
                for(int i=1; i<authors.length;i++){
                    sqlSt+=", '"+authors[i]+"'";//Subsequent authors with leading comas
                }
                sqlSt+=") AND qty > 0 ORDER BY author ASC, title ASC";
            }
            else{
                    
                    sqlSt+="SELECT * FROM bookdetails where qty > 0 ORDER BY author ASC, title ASC";
                }  
            System.out.println("Query Statement:"+sqlSt);
            ResultSet rset=stmt.executeQuery(sqlSt);
            
      out.write("\n");
      out.write("            <hr>\n");
      out.write("            <form method=\"post\" action=\"processorder.jsp\">\n");
      out.write("                <table border=\"1\" cellpadding=\"5\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Order</th>\n");
      out.write("                        <th>Author</th>\n");
      out.write("                        <th>Title</th>\n");
      out.write("                        <th>Price</th>\n");
      out.write("                        <th>Available Qty.</th>\n");
      out.write("                    </tr>\n");
      out.write("                    ");

                    
                    while(rset.next()){
                        int id=rset.getInt("id");
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <td><input type=\"checkbox\" name=\"id\" value=\"");
      out.print(id);
      out.write("\"></td>\n");
      out.write("                            <td>");
      out.print( rset.getString("author") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rset.getString("title") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rset.getString("price") );
      out.write("</td>\n");
      out.write("                            <td>");
      out.print( rset.getString("qty") );
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                    }
                    
      out.write("\n");
      out.write("                </table>\n");
      out.write("                <input type=\"submit\" value=\"Order\">\n");
      out.write("                <input type=\"reset\" value=\"Clear\">\n");
      out.write("            </form>\n");
      out.write("                \n");
      out.write("        ");
rset.close(); stmt.close();conn.close();}
        
      out.write("\n");
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
