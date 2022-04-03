package com.web;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.controller.voteCountDao;
import com.model.*;

@WebServlet("/vote_Count")
public class vote_CountServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
  
    public vote_CountServlet() 
    {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out = response.getWriter();
		
//		ArrayList<vote_Count> voteCount = new ArrayList<>();	
		int voterid  =Integer.parseInt(request.getParameter("vid"));
		int candidateid  =Integer.parseInt(request.getParameter("cid"));

		out.print("voter id:= "+voterid);
		out.print("candidate id:= "+candidateid);
		
		out.print("Thank for Voting.......");
		
		
		
			
		voteCountDao vd =new voteCountDao();
		
		vd.updatevote(candidateid);
		
		
	
		
		

	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
//		HttpSession session = request.getSession();
//		
//		ArrayList<vote_Count> countlist = (ArrayList<vote_Count>) session.getAttribute("id");
//		
//		if(countlist==null)
//		{
//			voteCount.add(cv);
//			
//			session.setAttribute("id", voteCount);
//			
//			out.print("Voted Sucessfully");
//			
//		}
		
		
		
		
		
		
		
	}

}
