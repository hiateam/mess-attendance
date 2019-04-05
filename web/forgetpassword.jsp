

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="forgetpasswordcheck" method="get">
            Mess Name
            <input type="text" name="messname" placeholder="enter mess name" required>
            Email
            <input type="email" name="email" placeholder="enter your  email id" required>
            Contact number
            <input type="number" name="contactnumber" placeholder="enter your contact number" required>
            <input type="submit" name="submit" value="get password">
        </form>
    </body>
</html>
