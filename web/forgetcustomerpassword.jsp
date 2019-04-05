

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="forgetpasswordcheckcustomer" method="get">
            Enter mess contact number
            <input type="text" name="contactnumbermess" placeholder="enter contact number of mess" required>
             Enter your name
            <input type="text" name="customername" placeholder="enter your name" required>
            Email
            <input type="email" name="email" placeholder="enter your  email id" required>
            Contact number
            <input type="number" name="contactnumber" placeholder="enter your contact number" required>
            <input type="submit" name="submit" value="get password">
        </form>
    </body>
</html>
