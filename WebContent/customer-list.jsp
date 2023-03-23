<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "com.techpalle.model.Customer" %>
    <%@ page import = "java.util.ArrayList" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- CDN Content Delivery Network -->
</head>
<body>
<header style = "color:white">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand">Customer Management</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="showList">Customer</a>
        </li>
        
        </ul>
   </div>
  </div>
</nav>
</header>
<div>
<br>
<br>
<form action = "insertForm" method = "post">
    <button class="btn btn-success">Add Customer</button>

   <figure class="text-center">
  <blockquote class="blockquote">
   <u><h2>Customer List</h2></u>
   
  </blockquote>
   </figure>
     <table class="table">
     <thead class="table-light">
     
     <tr>
         <th >Id</th>
         <th>Name</th>
         <th>Email</th>
         <th>Mobile</th>
         <th>Action</th>
      </tr>
      </thead>
      <tbody>
       <c:forEach var = "i" items = "${al}">
       <tr>
          <td><c:out value="${i.id}"></c:out></td>
          <td><c:out value="${i.name}"></c:out></td>
          <td><c:out value="${i.email}"></c:out></td>
          <td><c:out value="${i.mobile}"></c:out></td>
    
          <td><a href="editForm?id=<c:out value="${i.id}"></c:out>">Edit</a>&nbsp;<a href="delete?id=<c:out value="${i.id}"></c:out>">Delete</a></td>
      
          
       </tr>
       
     </c:forEach>
      </tbody>

</div>
</body>
</html>