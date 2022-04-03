<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%
 
 voters v =(voters)session.getAttribute("auth");
 
 
 if(v==null)
 {
	 response.sendRedirect("voterLogin.jsp");
 }

 %>      
  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>VoterProfile</title>
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
<%@ include file="newNavbar.jsp"%><br>
</header>

	
<div class="card shadow border cd" style="width:700px; margin-top:110px;">
    <img class="card-img-top dp" src="./img/law.jpg" alt="Card image">
    <div class="card-body">
        
        <div class="row text-center" style="margin-left: 75px;">
            <div class="col-sm-3">
              <h6 class="mb-0">Voter Id</h6>
            </div>
            <div class="col-sm-9 text-secondary">
             <%= v.getvId() %>
            </div>
          </div>
          <hr>
          <div class="row text-center" style="margin-left: 75px;">
            <div class="col-sm-3">
              <h6 class="mb-0">Full Name</h6>
            </div>
            <div class="col-sm-9 text-secondary">
             <%= v.getvName() %>
            </div>
          </div>
          <hr>
          <div class="row text-center" style="margin-left: 75px;">
            <div class="col-sm-3">
              <h6 class="mb-0">Email</h6>
            </div>
            <div class="col-sm-9 text-secondary">
              <%= v.getvEmail() %>
            </div>
          </div>
          <hr>
          <div class="row text-center" style="margin-left: 75px;">
            <div class="col-sm-3">
              <h6 class="mb-0">Dob</h6>
            </div>
            <div class="col-sm-9 text-secondary">
              <%= v.getvDob() %> 
            </div>
          </div>
          <hr>
          <div class="row text-center" style="margin-left: 75px;">
            <div class="col-sm-3">
              <h6 class="mb-0">Gender</h6>
            </div>
            <div class="col-sm-9 text-secondary">
            <%= v.getvGender() %>   
            </div>
          </div>
          <hr>
          <div class="row text-center" style="margin-left: 75px;">
            <div class="col-sm-3">
              <h6 class="mb-0">Mobile No</h6>
            </div>
            <div class="col-sm-9 text-secondary">
            	<%= v.getvPhoneno() %>  
            </div>
          </div>
          <hr>
          <div class="row text-center" style="margin-left: 75px;">
            <div class="col-sm-3">
              <h6 class="mb-0">Address</h6>
            </div>
            <div class="col-sm-9 text-secondary">
            <%= v.getvAddress() %>  
            </div>
          </div>
          <hr>
    </div>
  </div>






</body>
</html>