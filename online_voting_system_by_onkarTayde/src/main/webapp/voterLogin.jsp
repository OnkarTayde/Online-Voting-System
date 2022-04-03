<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="./style.css">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    
    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    
    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    
    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    
<header>
<!-- Nav bar -->
<%@ include file="newNavbar.jsp"%><br>
</header>

<div class="container"> 
    <div class="row">
      <div class="col-12 col-md-12" style="margin-top: 150px;">
      <div class="card logincard">
                  <div class="card-body">
                      <h5 class="card-title text-center"> Voter Login</h5>
                      <p class="card-text">
  
                          <form action="voter_LoginServlet" class="form-group">
                              
                              <label for="name">Email</label>
                              <br>
                              <input type="text" name="email" class="form-control" placeholder="Enter Your Name"><br>
                              
                              
                              <label for="password">Password</label>
                              <input type="password" name="password" class="form-control" placeholder="Enter Your New Password"><br>
                                      
                              <button class="btn btn-warning" type="submit">Login</button>					
                              <a href="register.jsp" class="btn btn-warning">Register</a>
                          </form>
                  </div>
              </div>
            </div>
    </div>
    </div>







</body>
</html>