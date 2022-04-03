package com.admin.Servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.controller.candidateDao;
import com.model.candidate;

/**
 * Servlet implementation class addCServlet
 */
@MultipartConfig
@WebServlet("/addCServlet")
public class addCServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addCServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
		PrintWriter p = response.getWriter();
	
		
		Part part = request.getPart("img");
		String filename = part.getSubmittedFileName();
		
		System.out.println(filename);
		
		System.out.println("Image name :- "+filename);
		
		String imagepath="D:/Voting Project using jsp/votingDemo/imges/"+filename;
		
		System.out.println("Image path :- "+imagepath);
		try 
		{
			
			FileOutputStream fos = new FileOutputStream(imagepath);
			InputStream is = part.getInputStream();
			
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	

		//String cimg = request.getParameter("cImg");
		String cname = request.getParameter("cname");
		int cage = Integer.parseInt(request.getParameter("cage"));
		String caddress = request.getParameter("caddress");
		String cparty = request.getParameter("cparty");
		
		
		
		
		
		candidate c = new candidate(filename,cname, cage, caddress, cparty);
		
		
		candidateDao cd  =new candidateDao();
		
		cd.InsertCandidate(c);
		
		if(cd!=null)
		{
			request.getSession().setAttribute("asd", c);
			response.sendRedirect("addCandidate.jsp");
		} else
			p.write("mmmmmmm");
		
		
		
	
		
		
		
	}

}
