
<%@page import="java.sql.ConnectionBuilder"%>
<%@page import="com.controller.voterDao"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voter Registration</title>

<link href="css/style.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>


<%@ include file="newNavbar.jsp"%> <br>
<% voterDao v= new voterDao();
	v.getConnection();%>

<div class="container justify-content-center"> 
<div class="row" id="formdiv">
	<div class="col=md-6">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title text-center">Voter Registration</h5>
					<p class="card-text">
					
					
					
						<form action="voterregisterServlet" class="form-group">
						
						
						
							
							<label for="name">Name</label>
							<input type="text" name="name" class="form-control" placeholder="Enter Your Name">
							
							<label for="email">Email</label>
							<input type="text" name="email" class="form-control" placeholder="Enter Your Email">
							
							<label for="DOB" class="form-lable">DOB</label>
							<input type="dob" class="form-control">
							
							<label for="gender" class="form-lable">Gender :</label><br>
							<input class="form-chack-input" type="radio" name="gender" value="Male"> Male</input>
							<input class="form-chack-input" type="radio" name="gender" value="Female"> Female</input>
							<br>
							
							<label for="phoneNo" >Phone No</label>
							<input type="text" name="phoneNo" class="form-control" placeholder="Enter Your Phone No">
							
							<label for="address">Address</label>
							<input type="text" name="address" class="form-control" placeholder="Enter Your Address">
							
							<label for="password">Password</label>
							<input type="password" name="password" class="form-control" placeholder="Enter Your New Password"><br>
									
									
							<button class="btn btn-warning" type="submit">Register</button>		
			
						
						</form>
				</div>
			</div>


		</div>
</div>
</div>





</body>
</html>