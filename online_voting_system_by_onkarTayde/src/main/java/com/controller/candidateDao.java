package com.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.model.candidate;
import com.mysql.cj.xdevapi.Statement;


public class candidateDao 
{
	private String jdbcDriver = "com.mysql.cj.jdbc.Driver";
	private String jdbcUrl = "jdbc:mysql://localhost:3306/onlinevotingsystem";
	private String jdbcUserName = "root";
	private String jdbcPassword = "Root@123";
	
	private  final String SELECT_FROM_CANDIDATES = "select* from candidates";
	private final String INSERT_CANDIDATE_INTODB= "insert into candidates" + "(cName,cAge,cAddress,cParty_Name,cImage) values" + "(?,?,?,?,?)";
	
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
	 
	 
	 
	 public List<candidate> getcandidateList()
	 {
		 List<candidate> list = new ArrayList<candidate>();
		 int id=0;
		 String name=null;
		 int age = 0;
		 String add=null;
		 String party=null;
		 String imgnm=null;
		 
		 try
		 {
			 Connection con = getConnection();
			 
//			 PreparedStatement ps= con.prepareStatement(SELECT_FROM_CANDIDATES);
//			 
//			 ResultSet rs= ps.executeQuery();
			 
			 java.sql.Statement ps= con.createStatement();
			 ResultSet rs= ps.executeQuery(SELECT_FROM_CANDIDATES);
			 
			 //get data from mysql 
			 while(rs.next())
			 {
				 candidate candi= new candidate();
				 
				 id = rs.getInt("c_id");
				 name=rs.getString("cName");
				 age=rs.getInt("cAge");
				 add=rs.getString("cAddress");
				 party=rs.getString("cParty_Name");
				 imgnm  = rs.getString("cImage");
				 
//				 candi.setcId(rs.getInt(1));
//				 candi.setcName(rs.getString(2));
//				 candi.setcAge(rs.getInt(3));
//				 candi.setcAddress(rs.getString(4));
//				 candi.setcParty(rs.getString(5));
				 
				 candi.setcId(id);
				 candi.setcName(name);
				 candi.setcAge(age);
				 candi.setcAddress(add);
				 candi.setcParty(party);
				 candi.setcImg(imgnm);

				 
				 list.add(candi);
			 }
			 
		 } 
		 catch (Exception e) 
		 {
			// TODO: handle exception
		} 
		return list;
	 }
	 
	 
	 //add candidate in database
	 
	 
	 
	 
	 public void InsertCandidate(candidate can)
	 {
		try 
		{
		
		Class.forName(jdbcDriver);
		Connection con=getConnection();
		
		PreparedStatement p = con.prepareStatement(INSERT_CANDIDATE_INTODB);
		
		 p.setString(1, can.getcName());
		 p.setInt(2, can.getcAge());
		 p.setString(3, can.getcAddress());
		 p.setString(4, can.getcParty());
		 p.setString(5, can.getcImg());

		 
		 p.executeUpdate();
			
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
	 }
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
}
