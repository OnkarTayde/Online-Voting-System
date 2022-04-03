package com.admin.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.adminDao;
import com.model.admin;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 

	public LoginServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		String aname = request.getParameter("Aname");
		String apass = request.getParameter("Apassword");

		adminDao ad = new adminDao();
		admin a = ad.adminLogin(aname, apass);

		if (a == null) 
		{
			out.print(" Sorry Login Unsucessfully");

		} 
		else 
		{
			 
			 response.sendRedirect("adminDashboard.jsp");
			out.print("  Login sucessfully");

		}

	}

}
