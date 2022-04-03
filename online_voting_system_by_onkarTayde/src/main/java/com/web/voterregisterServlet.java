package com.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.controller.voterDao;
import com.model.voters;

@WebServlet("/voterregisterServlet")
public class voterregisterServlet extends HttpServlet {
	
  
    public voterregisterServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out=response.getWriter();
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		int phoneNo=Integer.parseInt(request.getParameter("phoneNo"));
		String address=request.getParameter("address");
		String password=request.getParameter("password");
		
		voters v= new voters(name, email, dob, gender, phoneNo, address, password);
		
		voterDao d= new voterDao();
			d.InsertVoter(v);
		out.print(name);
		
		
		
	}

}
