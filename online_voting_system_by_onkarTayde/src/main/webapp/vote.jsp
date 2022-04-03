<%@page import="com.controller.voterDao"%>
<%@page import="java.util.List"%>
<%@page import="com.controller.candidateDao"%>
<%@page import="com.model.candidate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%



candidateDao can = new candidateDao();
	can.getConnection();
	
	
	List<candidate> clist=	can.getcandidateList();

	voters v = (voters) session.getAttribute("auth");
	
	
	
	
	
%>	
	
	
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Voting page</title>
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
			<h5 class="card-header text-center my-3">Candidate List</h5>

			
					
					<div class="row"> <!--row Start  -->
					
					<%
						/* if candidate list in not empty */
						if(!clist.isEmpty())
						{
							for(candidate c: clist)
							{ %>
							
							
								
								<div class="col-8 my-3">
																
									
								<img  src="D:/Voting Project using jsp/votingDemo/imges/<%= c.getcImg() %>">							
										
								<h5 class="card-title">Name:- <%= c.getcName() %></h5>
								<p class="card-text">Age:- <%= c.getcAge() %></p>
						
								<p class="card-text">Address:- <%= c.getcAddress() %></p>
								<p class="card-text">Party:- <%= c.getcParty() %></p>
								</div>
								
								<div class="col-4 text-center">
								
								<div class="d-grid gap-3 col-8 mx-auto">
							
								<a href="vote_Count?vid=<%= v.getvId() %>&cid=<%= c.getcId()%>" class="btn btn-success" style="margin-top:40px">Vote</a>	
								
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