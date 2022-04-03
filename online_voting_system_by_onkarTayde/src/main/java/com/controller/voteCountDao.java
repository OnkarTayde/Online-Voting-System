package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.candidate;
import com.mysql.cj.protocol.Resultset;

public class voteCountDao 
{
	private String jdbcDriver = "com.mysql.cj.jdbc.Driver";
	private String jdbcUrl = "jdbc:mysql://localhost:3306/onlinevotingsystem";
	private String jdbcUserName = "root";
	private String jdbcPassword = "Root@123";

	//private  final String INSERT_USERS_SQL = "insert into voters" + "(name,email,dob,gender,phoneno,address,password) values" + "(?,?,?,?,?,?,?)";

	
	 public  Connection getConnection() 
	 {
		 Connection con = null;
		 
		 try 
		 {
			 Class.forName(jdbcDriver);
			 con=DriverManager.getConnection(jdbcUrl,jdbcUserName,jdbcPassword);
			 System.out.println(con);
			
		} catch (Exception e)
		 {
			e.printStackTrace();
		 }		 
		return con;	
	}
//-----------------------------------------
	 
	 
	 
	 public void updatevote(int a) // update votescount set no_of_vote=no_of_vote +1 where vcid=1;
	 {
		 
		 try
		 {
			 Connection con = getConnection();
			 
			 PreparedStatement sp =con.prepareStatement("update candidates set cVotes_Count=cVotes_Count +1 where c_id=?");
			 
			 sp.setInt(1, a);
			 
			 int aa=sp.executeUpdate();
			 
			 if(aa!=0)
			 {
				System.out.println("vote add"); 
			 }
			 
			 
			 
			 
			 
		} 
		 catch (Exception e) {
			// TODO: handle exception
		}
		 
		 
		 
	 }
	 
	
		 
		 
		 

	 

}
