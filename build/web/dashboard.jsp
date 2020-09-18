<%-- 
    Document   : dashboard
    Created on : 27 Aug, 2020, 9:52:03 AM
    Author     : Dell
    at top for MySQL
    <% Class.forName("com.mysql.jdbc.Driver"); %>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>JSP Page</title>
        <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="dashboard.css">
        
    </head>
    <body>
        <!--validating user before loading page-->
        <%
            
            if((session.getAttribute("userid")==null) || (session.getAttribute("userid")=="")){
            %>
            <h1>  You are not logged in!<br></h1> <a href='index.jsp'>Try again</a>
            <%}else{
            %>
              
<!--                <a href='logout.jsp'>Sign off</></a> 
                <a href='loginInfo.jsp'>Profile</></a><br>
            
        <h1>Dashboard Page! </h1>-->
        
<div class="nav-container">
    <a id="dash" href="dashboard.jsp">Dashboard</a>
    <div class="dropdown">
        <a class="btn btn-primary" href="#"><i class="fa fa-user fa-fw" aria-hidden="false"></i>
        <div class="dropdown-content"> 
            <a href="loginInfo.jsp">Profile</a>
            <a href="logout.jsp">Logout</a>
        </div>
    </div>
</div>
        
        
        
        
        
        <%@page import = "java.sql.*"%>
        <h2>List of Books Available</h2>
        <h3>Choose Author!</h3>
        <form method="get">
            <input type="checkbox" name="author" value="Balagurusamy"> E. Balagurusamy
            <input type="checkbox" name="author" value="Shield"> H. Shield
            <input type="submit" value="Query">
        </form>
        <%
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
            %>
            <hr>
            <form method="post" action="processorder.jsp">
                <table border="1" cellpadding="5">
                    <tr>
                        <th>Order</th>
                        <th>Author</th>
                        <th>Title</th>
                        <th>Price</th>
                        <th>Available Qty.</th>
                    </tr>
                    <%
                    
                    while(rset.next()){
                        int id=rset.getInt("id");
                        %>
                        <tr>
                            <td><input type="checkbox" name="id" value="<%=id%>"></td>
                            <td><%= rset.getString("author") %></td>
                            <td><%= rset.getString("title") %></td>
                            <td><%= rset.getString("price") %></td>
                            <td><%= rset.getString("qty") %></td>
                        </tr>
                        <%
                    }
                    %>
                </table>
                <input type="submit" value="Order">
                <input type="reset" value="Clear">
            </form>
                
        <%rset.close(); stmt.close();conn.close();}
        %>
    </body>
</html>
