package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.admin;
import com.mysql.cj.protocol.Resultset;


public class adminDao 
{

	private String jdbcDriver = "com.mysql.cj.jdbc.Driver";
	private String jdbcUrl = "jdbc:mysql://localhost:3306/onlinevotingsystem";
	private String jdbcUserName = "root";
	private String jdbcPassword = "Root@123";
	
	private  final String SELECT_USER_BY_Email_Password = "select admin_username,admin_password from admin where admin_username=? and admin_password=?";
	
	
	protected Connection getConnection() 
	{
		Connection con=null;
		
		try 
		{
			Class.forName(jdbcDriver);
			con=DriverManager.getConnection(jdbcUrl,jdbcUserName,jdbcPassword);
			System.out.println(con);
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return con;
		
	}
	
	public admin adminLogin(String email,String pass)
	{	
		admin a =null;
		
		try {
			
			Connection connection=getConnection();
			
			PreparedStatement preparedStatement= connection.prepareStatement(SELECT_USER_BY_Email_Password);
			
			preparedStatement.setString(1, email);
			preparedStatement.setString(2, pass);
			
			ResultSet rs= preparedStatement.executeQuery();
			
			if(rs.next())
			{
				a=new admin();
				
				a.setaName(rs.getString("aName"));
				a.setaPassword(rs.getString("aPassword"));		
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return a;
		
		
	}
	
	
	
	
	
	
}
