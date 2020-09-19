<%-- 
    Document   : profileEditprocess
    Created on : Sep 19, 2020, 4:21:58 PM
    Author     : mahar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%
            String name = request.getParameter("fname");
            String address = request.getParameter("address");
            
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/UserDB","sanish","admin123");            
            Statement st=con.createStatement();
            
            int i = st.executeUpdate("update USERINFO set name='"+name+"', address='"+address+"' where userid='"+session.getAttribute("userid")+"'");
            if(i>0) {
                %>
                <script>
                    alert("Update Successful!!");
                    
                </script>
                <% response.sendRedirect("loginInfo.jsp");
             }else{
             %>
             <script>
                 alert("Update Unsuccessful!!!");
             </script>
             <% response.sendRedirect("editProfile.jsp"); 
        }
        %>
    </body>
</html>
