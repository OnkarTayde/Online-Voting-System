<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="com.model.voters" %>
	<% 
	voters auths=(voters) request.getSession().getAttribute("auth");
	
	if(auths!=null)
	{
		request.getSession().getAttribute("auth");
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="css/style.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">OVS</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<ul class="nav nav-tabs">
				
				
				<%
				
					if(auths==null)
					{%>
					    <li class="nav-item"><a class="nav-link " href="voterHome.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="adminlogin.jsp">Admin Login</a></li>
						<li class="nav-item"><a class="nav-link " href="register.jsp">Registration</a></li>
						<li class="nav-item"><a class="nav-link" href="voterLogin.jsp">Login</a></li>
						<li class="nav-item"><a class="nav-link" href="##">Contect</a></li>
						<li class="nav-item"><a class="nav-link" href="##">About</a></li>
						
						
					<%}
					else if(auths!=null)
					{%>
						<li class="nav-item"><a class="nav-link" href="voterProfile.jsp">Profile</a></li>
						<li class="nav-item"><a class="nav-link" href="vote.jsp">Vote</a></li>
						<li class="nav-item"><a class="nav-link " href="result2.jsp">Result</a></li>
						<li class="nav-item"><a class="nav-link" href="voter_logout">Logout</a></li>
						
					<%}
				
				%>
	
			
			</ul>
		</div>
	</nav>
</body>
</html>