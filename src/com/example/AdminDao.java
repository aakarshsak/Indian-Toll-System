package com.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDao {
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","abcd123");
		return con;
	
	}
	
	public static Admin login(String id,String pass)
	{
		Admin a=new Admin();
		try{
		Connection con=AdminDao.getConnection();
		PreparedStatement st=con.prepareStatement("select * from cardetails where AdminId=? and pass=?");
		st.setString(1, id);
		st.setString(2, pass);
		ResultSet rs=st.executeQuery();
		
		if(rs.next())
		{
			a.setUserid(rs.getString(1));
			a.setPass(rs.getString(2));
			a.setToll(rs.getInt(3));
			a.setName(rs.getString(4));
			a.setStatus(true);			
		}
		
		
		}catch(Exception e){e.printStackTrace();}
		return a;
	}
	
	/*public static List<Admin> fetch()
	{
		List<Admin> cl=new ArrayList<Admin>();
		
		try{
			Connection con=AdminDao.getConnection();
			PreparedStatement st=con.prepareStatement("select * from cardetails");
			
			ResultSet rs=st.executeQuery();
			
			while(rs.next())
			{
				Admin c=new Admin();
				c.setUserid(rs.getString(4));
				c.setName(rs.getString(1));
				cl.add(c);
			}
		
		}
		catch(Exception e){e.printStackTrace();}
		
		return cl;
	}
	public static void main(String  args[])
	{
		List<Admin> cl= AdminDao.fetch();
		for(Admin c1:cl)
		{
			System.out.print(c1.getName()+" "+c1.getUserid());
			System.out.println();
		}
	}*/
	

}
