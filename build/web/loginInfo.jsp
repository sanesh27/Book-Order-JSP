<%-- 
    Document   : loginInfo
    Created on : 4 Sep, 2020, 8:04:02 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="profile.css">
        <title>User Profile</title>
    </head>
    <body>
        <%
            if(session.getAttribute("userid") == "" || session.getAttribute("userid") == null) {
                    
        %>
        <p>
            You are not logged in!! <a href="index.jsp">Try Again!!</a>
        </p>
            <% } else {
        %>
        
        <% //out.println(session.getAttribute("userid")); %>
        
        <div class="nav-container">
    <a id="dash" href="dashboard.jsp">Profile</a>
    <div class="dropdown">
        <a class="btn btn-primary" href="#"><i class="fa fa-user fa-fw" aria-hidden="false">User</i></a>
        <div class="dropdown-content"> 
            <a href="dashboard.jsp">Dashboard</a>
            <a href="logout.jsp">Logout</a>
        </div>
    </div>
</div>
        
        <%@page import="java.sql.*" %>
        <div id="top-section">
            <h2>Account Settings</h2>
            <button type="button" class="btn btn-info"><a href="editProfile.jsp" style="color: whitesmoke; right: 0%;"> Edit Profile </a></button>
        </div>
        <div class="prof-section row">
            <div class="prof-pic col-3">
                <img src="pp.png" alt="user profile im age" class="img-thumbnail">
                <p><%out.println(session.getAttribute("userid")); %></p>
            </div>
            
            <br>
            <div class="profile-container col-9">
                <hr>
                <%
                    Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/UserDB","sanish","admin123");
                        Statement stmt=conn.createStatement();
                        
                        String query ="";
                        query += "Select name, address from userinfo where userid = '"+session.getAttribute("userid")+ "'";
                        ResultSet r = stmt.executeQuery(query);
                        if(r.next()) {
                            String n = r.getString("name");
                            String a = r.getString("address");
                            if(n == null || n == "" && a == null || a == "") {
                %>
                <div class="user-info">
                <p>Username</p>
                <p> <% 
                        out.println(session.getAttribute("userid"));                      
                    %> </p>                 
                </div>
                <hr>
                <div class="user-info">
                    <p>Email Id</p>
                    <p>
                        <%
                            ResultSet email ;
                            email = stmt.executeQuery("Select email from userinfo where userid= '"+session.getAttribute("userid")+ "'");
                            if(email.next()) {
                            out.println(email.getString("email"));
                            }
                        %>
                    </p>
                </div>
                    <hr>
                <% } else {
                    String output = "";
                    output = "Select userid, email, name, address  from userinfo where userid= '"+session.getAttribute("userid")+ "'";
                    ResultSet rset;
                    rset = stmt.executeQuery(output);
                    while (rset.next()) {
                %>
                
                <div class="user-info">
                    <p>Name</p>
                    <p><%= rset.getString("name") %></p>
                </div>
                <hr>
                <div class="user-info">
                    <p>User Name</p>
                    <p><%= rset.getString("userid") %></p>
                </div>
                <hr>
                <div class="user-info">
                    <p>Email ID</p>
                    <p><%= rset.getString("email") %></p>
                </div>
                <hr>
                <div class="user-info">
                    <p>Address</p>
                    <p><%= rset.getString("address") %></p>
                </div>
                <hr>
                <% }
                    rset.close(); stmt.close();conn.close();
                } %>
            </div> 
   <% } }%>
        </div>
    </body>
</html>
