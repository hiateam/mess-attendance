<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   
    <title>TRANSPARENT LOG IN PAGE</title>
    <link rel="stylesheet" type="text/css" href="styleadminsignup.css">
  </head>
    <body>
    <div class="login-box" style="padding: 3rem; color:yellow;">
    
        <h1>Sign Up Here</h1>
            <form action="adminregistration" method="get">
            <p>Mess Name</p>
            <input type="text" name="messname" placeholder="Enter Mess Name" required>
            <p>Username</p>
            <input type="text" name="username" placeholder="Enter Username" required>
            <p>email</p>
            <input type ="text" name="email" placeholder="Enter your email"required>
            <p>Contact Number</p>
            <input type ="text" name="contactnumber" placeholder="Enter your contact number" required>
            <p>Address</p>
            <input type ="text" name="address" placeholder="Enter address of mess"required>
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password" required>

            <p>confirm Password</p>
            <input type="password" name="confirmpassword" placeholder="confirm Password"required>

            <input type="submit" name="submit" value="sign up" required>
            
            <h>Already have an account</h> 
           
                 <li><a href="adminlogin.jsp">log in</a></li>
            
            
            
             
            </form>
             
        </div>
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>