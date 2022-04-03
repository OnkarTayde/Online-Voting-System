package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.candidate;
import com.model.vote_Count;
import com.model.voters;
import com.mysql.cj.protocol.Resultset;

public class voterDao 
{
	private String jdbcDriver = "com.mysql.cj.jdbc.Driver";
	private String jdbcUrl = "jdbc:mysql://localhost:3306/onlinevotingsystem";
	private String jdbcUserName = "root";
	private String jdbcPassword = "Root@123";
	
	private  final String INSERT_USERS_SQL = "insert into voters" + "(name,email,dob,gender,phoneno,address,password) values" + "(?,?,?,?,?,?,?)";
	private  final String SELECT_FROM_VOTERS = "select* from voters where id=?";
	private  final String SELECT_USER_BY_Email_Password = "select id,name,email,dob,gender,phoneno,address,password from voters where email=? and password=?";
	
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

	 public void InsertVoter(voters v)
	 {
		 
		 try {
			 Connection connection = getConnection();
			 PreparedStatement p=connection.prepareStatement(INSERT_USERS_SQL);
			 
			 p.setString(1, v.getvName());
			 p.setString(2, v.getvEmail());
			 p.setString(3, v.getvDob());
			 p.setString(4, v.getvGender());
			 p.setLong(5, v.getvPhoneno());
			 p.setString(6, v.getvAddress());
			 p.setString(7, v.getvPassword());
			 
			 p.executeUpdate(); 
			 
		}
		 catch (Exception e) 
		 {
			
		}	 
	 }
	 
	 
	 public voters voterLogin(String email,String passw)
	 {
		 voters v=null;
		 try {
			 Connection connection = getConnection();
			 PreparedStatement p=connection.prepareStatement(SELECT_USER_BY_Email_Password);
			 
			 p.setString(1,email);
			 p.setString(2, passw);
			 
			 ResultSet rs=p.executeQuery();
			 
			 if(rs.next())
			 {
				 v= new voters(); 
				 v.setvId(rs.getInt("id"));
				 v.setvName(rs.getString("name"));
				 v.setvEmail(rs.getString("email"));
				 v.setvDob(rs.getString("dob"));
				 v.setvPhoneno(rs.getLong("phoneno"));
				 v.setvAddress(rs.getString("address"));
				 v.setvPassword(rs.getString("Password"));
			 }
			 
		}
		 catch (Exception e) 
		 {
			e.printStackTrace();
		}
		return v;
	 }
	 
	 public voters profile(int id)
	 {
		 voters v=null;
		 
		 try 
		 {
			Connection con= getConnection();
			
			
			PreparedStatement ps= con.prepareStatement(SELECT_FROM_VOTERS);
			
			ps.setInt(1, id);
			 
			 ResultSet rs= ps.executeQuery();
			 
			 //get data from mysql 
			 while(rs.next())
			 {
				 voters vv = new voters();
				 
				 vv.setvId(rs.getInt(1));
				 vv.setvName(rs.getString(2));
				 vv.setvEmail(rs.getString(3));
				 vv.setvDob(rs.getString(4));
				 vv.setvGender(rs.getString(5));
				 vv.setvPhoneno(rs.getLong(6));
				 vv.setvAddress(rs.getString(7));
				 vv.setvPassword(rs.getString(8));
				 
				
				 
			 }
			
		} 
		 catch (Exception e) 
		 {
			 e.printStackTrace();
		 }
		 
		 
		 
		 
		return v;
		 
	 }
	 
}
