<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link href="css/style.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>


	<%@ include file="adminNavbar.jsp"%><br>

	<div class="container justify-content-center">
		<div class="row" id="formdiv">
			<div class="col=md-6">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title text-center">Admin Login</h5>
						<p class=
						"card-text">
						
						<form action="LoginServlet" class="form-group">

							<label for="name">User Name</label> <br> <input type="text"
								name="Aname" class="form-control" placeholder="Enter Your Name"><br>


							<label for="password">Password</label> <input type="password"
								name="Apassword" class="form-control"
								placeholder="Enter Your New Password"><br>


							<button class="btn btn-warning" type="submit">Login</button>

						</form>
					</div>
				</div>


			</div>
		</div>
		</div>
</body>
</html>
