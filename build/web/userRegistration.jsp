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
        <h1>User Registration Form</h1><br>
        <form method="post" action="processRegistration.jsp">
            User ID: <input type="text" name="userid" value=""><br>
            Password: <input type="password" name="pwd" value=""><br>
            Email ID: <input type="text" name="emailid" value=""><br>
            <input type="submit" value="Submit">
            <input type="reset" Value="Reset">
            <br>
            <h1>Already Registered? </h1> <a href="index.jsp">Click here</a>
        </form>
    </body>
</html>
