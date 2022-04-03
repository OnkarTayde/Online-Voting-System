<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.controller.Result"%>
<%@page import="java.util.List"%>
<%@page import="com.model.candidate"%>
    
    <%

	Result r = new Result();
	r.getConnection();
	
	
	List<candidate> clist=	r.getresult();	
	
%>	
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Result Page</title>
<link href="css/style.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>

	<header>
<%@ include file="newNavbar.jsp"%><br>
	</header>


	<div class="card" id="formdiv" >

		<div class="card-body">
			<h5 class="card-header text-center my-3">Winner Candidate</h5>

			
					
					<div class="row"> <!--row Start  -->
					
					<%
						/* if candidate list in not empty */
						if(!clist.isEmpty())
						{
							for(candidate c: clist)
							{ %>
								
								<div class="col-8 my-3">
							
								
								<h5 class="card-title">Name:- <%= c.getcName() %></h5>
								<p class="card-text">Age:- <%= c.getcAge() %></p>
						
								<p class="card-text">Address:- <%= c.getcAddress() %></p>
								<p class="card-text">Party:- <%= c.getcParty() %></p>
								<p class="card-text">Total Votes:- <%= c.getvCount() %></p>
								
								</div>
								
								
								</div>
								<hr>
							<%}
						}
					%>
					</div>  <!--row end  -->
				</div>
			</div>
	







</body>
</html>