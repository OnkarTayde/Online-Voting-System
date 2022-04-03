package com.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/voter_logout")
public class voter_logoutServlet extends HttpServlet
{

       
  
    public voter_logoutServlet() 
    {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		try 
		{
			PrintWriter out= response.getWriter();
			
					
					if(request.getSession().getAttribute("auth")!=null) // if seesion is not equal to null it means user is logined
					{
						//here we remove the user inshort we remove the session obj
						request.getSession().removeAttribute("auth");
			
						//after remove the user redirect in login page
	
						response.sendRedirect("voterLogin.jsp");
					}
					else
					{
						response.sendRedirect("voterHome");
					}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}

}
