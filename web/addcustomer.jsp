<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    
  
	<title>sourabh creation</title>
	<link rel="stylesheet" type="text/css" href="addcustomer.css">
</head>
<body>
  
       <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="  height: 3rem;">
  <a class="navbar-brand" href="#">MESS</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.html">Home <span class="sr-only">(current)</span></a>
      </li>


       <li class="nav-item">
        <a class="nav-link" href="addcustomer.jsp">Add customer</a>
      </li>

       <li class="nav-item">
        <a class="nav-link" href="addemploy.jsp">Add Employ</a>
      </li>

      

      <li class="nav-item">
        <a class="nav-link" href="studentattendance.html"> Student Attendance</a>
      </li>



      <li class="nav-item">
        <a class="nav-link" href="#"> Employ Attendance</a>
      </li>


       <li class="nav-item">
        <a class="nav-link" href="#">Check attendance</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="#">Logout</a>
      </li>

     
</ul>
       
</div>

</nav>

 <div class="login-box" style="color:yellow;">
    
        <h1>Add Customer</h1>
        <form action="addcustomer" method="get">
            <p>name</p>
            <input type="text" name="customername" placeholder="Enter name" required>
            <p>email</p>
            <input type ="text" name="email" placeholder="Enter your email" required>
            <p>Address</p>
            <input type="text" name="address" placeholder="Enter your Address" required>
          
           <p>mobile number</p> 
           <input type="number" name="contactnumber" placeholder="enter contact number" required>

           <p>home town</p> 
           <input type="text" name="hometown" placeholder="enter your hometown" required>
           <p>enter password</p> 
           <input type="password" name="password" placeholder="enter password" required>

           <input type="submit" name="submit" value="save customer">
           
            </form>
          </div>

 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>