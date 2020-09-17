<%-- 
    Document   : userRegistration
    Created on : 28 Aug, 2020, 9:32:59 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Registration Form</title>
    </head>
    <body>
        <div class="flex-container">
        <h3 id="title">User Registration Form</h3><br>
        <form method="post" action="processRegistration.jsp">                       
            <div class="form-group">
                <label for="exampleInputName">User ID</label>
                <input type="text" name="userid" class="form-control" id="exampleInputName">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword">Password</label>
                <input type="password" name="pwd" class="form-control" id="exampleInputPassword">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail">Email ID</label>
                <input type="text" name="emailid" class="form-control" id="exampleInputEmail">
            </div>
            <button type="submit" class="btn btn-default">Login</button>
            <input class="btn btn-primary" type="reset" value="Reset">
            <br>
            <p>Already Registered?<a href="index.jsp"> Click here! </a></p>
        </form>
        </div>
    </body>
</html>
