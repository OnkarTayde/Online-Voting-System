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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>newNavBar</title>
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
  <!-- navbar -->
    <nav class="navbar navbar-expand-md  navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" style="color: #ffbf00ec; font-size:xx-large;" href="#">ElectionBox</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsenavbar" >
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse text-center" id="collapsenavbar">
                <ul class="navbar-nav ml-auto ">
                <%
				
					if(auths==null)
					{%>
                    <li class="nav-item">
                      <a class="nav-link active text-white" aria-current="page" href="home.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-white" href="#services">Services</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-white" href="voterLogin.jsp">Voter Login</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-white" href="adminlogin.jsp">Admin Login</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-white" href="register.jsp">Registration</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-white" href="#footerr">About</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link text-white" href="#footerr">Contact</a>
                    </li>
                    
                    
                    <%}
					else if(auths!=null)
					{%>
					<li class="nav-item"><a class="nav-link" href="voterProfile2.jsp">Profile</a></li>
						<li class="nav-item"><a class="nav-link" href="vote.jsp">Vote</a></li>
						<li class="nav-item"><a class="nav-link " href="result2.jsp">Result</a></li>
						<li class="nav-item"><a class="nav-link" href="voter_logout">Logout</a></li>
						<%}
                %>
                  </ul>
              </div>        
      </div>
</nav>
</body>
</html>