<%-- 
    Document   : login
    Created on : Sep 19, 2021, 4:41:00 AM
    Author     : Nicholas Risko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="login.css">
        <script src ="loginvalidate.js"></script>
        <title>Login</title>
    </head>
    <body>
        <form class="form" method="post">
            <h1>Vaccination Portal</h1>
            <h1>Please Login</h1>
            <input type="text" name="" placeholder="Username" id="username">
            <input type="password" name="" placeholder="Password" id="password">
            <input type="submit" name="" value="Login" onclick="validate()">
        </form>
        <br>
        ${msg}
    </body>
</html>
