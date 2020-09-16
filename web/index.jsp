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
        <style>
            body {
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                padding-top: 5%;
            }
            .form-control{
                width: 100%;
            }
        </style>
            
        <title>JSP Page</title>
    </head>
    <body>
        <div>
        <% out.print("welcome to JSP");%>
        <%= "welcome to JSP"%>
        </div>
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
            <button type="submit" class="btn btn-default">Login</button>
            
            <!--get registered link-->
            Yet not registered! <a href='userRegistration.jsp'>Click here!</a>
           
        </form>
    </body>
</html>
