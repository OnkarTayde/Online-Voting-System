<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.model.candidate"  %>
    
    <%
    
    
    
    candidate cc = (candidate) request.getSession().getAttribute("asd");
    
    if(cc!=null)
    {
    	request.getSession().getAttribute("asd");
    	
    }
    
    
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image/x-icon" href="./img/apple-touch-icon.png">
<title>Add Candidates</title>
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
					<h5 class="card-title text-center">Add Candidate</h5>
					<p class="card-text">
					
					
					<h3>Upload image</h3>
					
			
						<form action="addCServlet" class="form-group" method="post" enctype="multipart/form-data">
						
						<input type="file" name="img">
						<input type="submit" value="submit" name="submit">
					
							

							<label for="cname">Name</label>
							<input type="text" name="cname" class="form-control" placeholder="Candidate Name">
							
					
							<label for="cage" class="form-lable">Age</label>
							<input type="number" name="cage" class="form-control" placeholder=" Candidate Age">
							
						
							
							<label for="caddress" >Address</label>
							<input type="text" name="caddress" class="form-control" placeholder="Candidate Address">
							
							<label for="cparty">Party Name</label>
							<input type="text" name="cparty" class="form-control" placeholder="Party Name">
							
					<br>
							<button class="btn btn-warning" type="submit">Add Candidate</button>					
						<% 
						if(cc!=null)
						{
							%>
							<h3>candidate added....</h3>
							<%= cc.getcName()%>
							<% 						}
						
						
						request.getSession().invalidate();
						
						%>
						</form>
					
					
					
					
					
					
					
						
						
						
				</div>
			</div>


		</div>
</div>
</div>






</body>
</html>
