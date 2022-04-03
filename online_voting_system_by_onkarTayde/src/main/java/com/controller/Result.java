package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.candidate;
import com.model.voters;

public class Result 
{
	private String jdbcDriver = "com.mysql.cj.jdbc.Driver";
	private String jdbcUrl = "jdbc:mysql://localhost:3306/onlinevotingsystem";
	private String jdbcUserName = "root";
	private String jdbcPassword = "Root@123";
	
	private  final String SELECT_MAX_COUNT_VOTES = "select* from candidates where cVotes_Count = (select max(cVotes_Count) from candidates);";
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
	
	public List<candidate> getresult()
	{
		List<candidate> list = new ArrayList<candidate>();
	
	 try 
	 {
		Connection con= getConnection();
		
		
		PreparedStatement ps= con.prepareStatement(SELECT_MAX_COUNT_VOTES);
		 
		 ResultSet rs= ps.executeQuery();
		 
		 //get data from mysql 
		 while(rs.next())
		 {
			 
			 candidate c = new candidate();
			 
			c.setcId(rs.getInt(1));
			c.setcName(rs.getString(2));
			c.setcAge(rs.getInt(3));
			c.setcAddress(rs.getString(4));
			c.setcParty(rs.getString(5));
			c.setvCount(rs.getInt(6));
			
			
			list.add(c);
			 
			 
			
			 
		 }
		
	} 
	 catch (Exception e) 
	 {
		 e.printStackTrace();
	 }
	return list;
	 
	 
	 
	 
	
	}
}
