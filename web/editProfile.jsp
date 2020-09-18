<%-- 
    Document   : editProfile
    Created on : Sep 18, 2020, 6:23:22 PM
    Author     : mahar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="profile.css">
        <title>JSP Page</title>
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
        
         <div class="nav-container">
    <a id="dash" href="editProfile.jsp">Edit Profile</a>
    <div class="dropdown">
        <a class="btn btn-primary" href="#"><i class="fa fa-user fa-fw" aria-hidden="false">User</i></a>
        <div class="dropdown-content"> 
            <a href="dashboard.jsp">Dashboard</a>
            <a href="logout.jsp">Logout</a>
        </div>
    </div>
</div>   
        
        <h2>Account Settings</h2>
        
        <div class="prof-section row">
            <div class="prof-pic col-3">
                <img src="pp.png" alt="user profile image" class="img-thumbnail">
                <p><%out.println(session.getAttribute("userid")); %></p>
            </div>
            
            <div class="profile-container col-9">
                <form method="POST" action="profileEditprocess.jsp">
  <div class="form-group">
    <label for="exampleInputName">Fullname</label>
    <input type="text" name="fname" class="form-control" id="exampleInputName">
    
  </div>
                          
  <div class="form-group">
    <label for="exampleInputAddress">Address</label>
    <input type="text" name="address" class="form-control" id="exampleInputAddress">
    
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
                <hr>
            </div>
        </div>
            <div id="pwd-container">
            <h6>Change Password</h6>
            <p><input class="btn btn-primary" onClick="resetFunction()" type="reset" value="Edit">            
            </p>
            
            </div> 
            <div id="pwd-change">
                
            </div>
    <% } %>    
    </body>
<!--    <script>
        function resetFunction() {
            
        }
    </script>-->
</html>
