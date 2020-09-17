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
        <link rel="stylesheet" href="form.css">
        <title>Registration Form</title>
    </head>
    <body>
        <div class="flex-container">
        <h3 id="title">Create account</h3><br>
        <form method="post" action="processRegistration.jsp">                       
            <div class="form-group">
                <label for="exampleInputName">User ID</label>
                <input type="text" name="userid" class="form-control" id="exampleInputName" value="">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword">Password</label>
                <input type="password" name="pwd" class="form-control" id="exampleInputPassword" value="">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail">Email ID</label>
                <input type="text" name="emailid" class="form-control" id="exampleInputEmail" value="">
            </div>
            
            <button type="submit" class="btn btn-primary">Login</button>
            <input class="btn btn-primary" id="btnReset" onClick="valueReset()" type="reset" value="Reset">
            <hr>
            <p>Already have an account?<a href="index.jsp"> Click here! </a></p>
        </form>
        </div>
    </body>
    <script>
//        const reset = document.getElementById("btnReset");
        const input = document.getElementsByClassName("form-control");
        
        function valueReset() {
            input.values() = "";
        }
    </script>
</html>
