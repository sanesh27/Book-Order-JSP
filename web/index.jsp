<%-- 
    Document   : newjsp
    Created on : 27 Aug, 2020, 8:54:14 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="newcss.css">
        
            
        <title>JSP Page</title>
    </head>
    <body>
        <div class="flex-container">
            <h3 id="title">Sign in</h3>
            <br>
            <form action="loginvalidate.jsp" method="POST">
                <div class="form-group">
                    <label for="exampleInputName">User Name</label>
                    <input type="text" name="uname" class="form-control" id="exampleInputName">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" name="pwd" class="form-control" id="exampleInputPassword1">
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
            
                <!--get registered link-->
                <p> Yet not registered! <a href='userRegistration.jsp'> Click here! </a></p>
            </form>
        </div>
    </body>
</html>
