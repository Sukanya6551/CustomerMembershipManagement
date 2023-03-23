<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<header style = "color:white">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Customer Management</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      
        
      
    </div>
  </div>
  </nav>
</header>
<br>

<form action = "List" method = "post">

<div class="container" style="width:50%;background-color:black;color:white;margin:20px;padding:50px">

  <figure class="text-center">
  <blockquote class="blockquote">
   <h2>Admin Login Page</h2>
  </blockquote>
  </figure>

   <div class="mb-3">
  		<label for="exampleFormControlInput1" class="form-label">UserName:</label>
  		<input type="text" class="form-control" id="exampleFormControlInput1" name="tbUser" placeholder="username" required="required">
	</div>
    
    <div class="mb-3">
  		<label for="exampleFormControlInput1" class="form-label">Password:</label>
  		<input type="password" class="form-control" id="exampleFormControlInput1" name="tbPass" placeholder="******" required="required">
	</div>
    
    
    <center><button type="submit" class="btn btn-success">Login</button></center>
    
   </div>
</form>
</body>
</html>