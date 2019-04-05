<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    
    String aid=(String)session.getAttribute("admin");
    if(aid==null){
    response.sendRedirect("index.jsp");
    }
   response.setHeader("Cache-Control","no-cache");
   response.setHeader("Cache-Control","no-store");
   response.setHeader("Pragma","no-cache");
   response.setDateHeader("Expires",0);
   %>

   

     
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    
  
	<title>hiateam</title>
	<link rel="stylesheet" type="text/css" href="admin.css">
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
        <a class="nav-link" href="studentattendance.jsp"> Student Attendance</a>
      </li>

       <li class="nav-item">
        <a class="nav-link" href="employattendance.jsp"> Employ Attendance</a>
      </li>

       <li class="nav-item">
        <a class="nav-link" href="#">Check attendance</a>
      </li>
 <li class="nav-item">
        <a class="nav-link" href="checkadminforupdate.jsp">Update Information</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="endsession">Logout</a>
      </li>

     
</ul>
       
</div>

</nav>

<div class="glass"></div>

     <div class="col-md-6">
           
           <h2><P style="padding-top: 90px; color: darkseagreen;">"sourabh khbdsckjbdc kjbskjbs kjjfj jbkjb   khvjhv  khvjhvm khvk kvkvkhv khkhgk kgkvn khvgkkhvgk khgigkjn khgfgjk khvkmvjfg dfvdfv jgfiugk nkvjgjk bslkjwdond oijdnjwd odoijdiojd oijdoinsdoinsd oindnsddind nsdknsknsd klnslknslknalkna lknsknslknsal klknslknsknslknasdlknasdlkknad lknsdslknadlkn kbslk jbslkbsxlkkb jbxkjbd kjbdond jdkjndkl jnlkndlkn jndlkndlkn jndlkndlkn jbdsndl"</P></h2>

       </div>

 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
    
 

