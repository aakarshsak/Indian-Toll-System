package com.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
	
	public static Connection getConnection()
	{
		
		Connection con=null;
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "abcd123");
		}
		catch(Exception e){e.printStackTrace();}
		return con;
	}
	
	public static User login(String mobile,int pass)
	{
		User u = null;
		try
		{
			
			Connection con=UserDao.getConnection();
			PreparedStatement st=con.prepareStatement("Select * from userlogin where Mobile=? and pass=?");
			st.setString(1, mobile);
			st.setInt(2, pass);
			
			u=new User();
			ResultSet rs=st.executeQuery();
			
			/*rs.next();
			u.setName(rs.getString(1));
			u.setPass(rs.getInt(5));*/
			if(rs.next());
			{
				u.setName(rs.getString(1));
				u.setPhoneNumber(rs.getString(2));
				u.setAdhar(rs.getString(3));
				u.setCar(rs.getString(4));
				u.setPass(rs.getInt(5));
				u.setStatus(true);
			}
			return u;
			
			
			
		}catch(Exception e){e.printStackTrace();}
		return u;
		
	
		
	}
	/*public static void main(String[] args) {
		User u=UserDao.login("9606409972", 9496);
		System.out.println(u.getPhoneNumber());
		System.out.println(u.getAdhar());
		System.out.println(u.getCar());
		System.out.println(u.getPass());
		System.out.println(u.getName());
		
	}*/
}
