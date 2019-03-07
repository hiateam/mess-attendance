<%-- 
    Document   : adminlogin
    Created on : Feb 10, 2019, 5:13:48 PM
    Author     : rish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title> Transparent Login Form Design </title>
    <link rel="stylesheet" type="text/css" href="styleadminlogin.css">   
</head>
    <body>
    <div class="login-box">
    <img src="indexlogo.png" class="avatar">
        <h1>Login Here</h1>
            <form>
            <p>Username</p>
            <input type="text" name="username" placeholder="Enter Username">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password">
           	<div class="button">
      		<a href="ADMIN.html" class="btn">LOG IN</a>
      	</div>
           
   <ul>
           <li> <a href="#">Forget Password</a></li>
           <li> <a href="adminsignup.jsp">Sign in</a></li>
    </ul>              
            </form>
        
        
        </div>
    
    </body>
</html>