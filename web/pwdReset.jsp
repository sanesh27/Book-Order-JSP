<%-- 
    Document   : pwdReset
    Created on : Sep 19, 2020, 4:51:33 PM
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
        <%@ page import="java.security.MessageDigest"%>
        <%@page import="java.sql.*" %>
        <%          
            String newp = request.getParameter("new-pwd");
            String confirmp = request.getParameter("confirm-pwd");
            
            //code for MD5
            String epassword = confirmp;
            //digest algorithm 
            MessageDigest alg=MessageDigest.getInstance("MD5");
            //reset the digest
            alg.reset();
            
            //calculate the md5 hash
            alg.update(epassword.getBytes());
            
            byte[] digest=alg.digest();
            
            StringBuffer hashedpassword = new StringBuffer();
            String hx;
            for( int i=0; i<digest.length;i++){
                hx=Integer.toHexString(0xFF & digest[i]);
                //0x03 is equal to 0x3, but as we need 0xFF for out md5
                if(hx.length()==1){hx = "0"+hx;}
                hashedpassword.append(hx);
            }
            
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/UserDB","sanish","admin123");
            Statement st = con.createStatement();
            
            int i = st.executeUpdate("update USERINFO set password='"+hashedpassword.toString()+"' where userid='"+session.getAttribute("userid")+"'");
            if(i>0) {
                %>
                <script>
                    alert("Changes Successful!!");
                    
                </script>
                <% response.sendRedirect("editProfile.jsp");
             }else{
             %>
             <script>
                 alert("Update Unsuccessful!!!");
             </script>
             <% response.sendRedirect("editProfile.jsp"); 
        }
        %>
            
        %>
    </body>
</html>
