package com.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CarsListDao {
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","abcd123");
		return con;
	
	}
	
	
	public static List<CarsList> fetch()
	{
		List<CarsList> cl=new ArrayList<CarsList>();
		
		try{
			Connection con=CarsListDao.getConnection();
			PreparedStatement st=con.prepareStatement("select * from carlist");
			
			ResultSet rs=st.executeQuery();
			
			while(rs.next())
			{
				CarsList c=new CarsList();
				c.setCarNumber(rs.getString(1));
				c.setTime(rs.getString(2));
				cl.add(c);
			}
		
		}
		catch(Exception e){e.printStackTrace();}
		
		return cl;
	}
	
	public static List<CarsList> fetchParticular(String carNumber)
	{
		List<CarsList> cl=new ArrayList<CarsList>();
		
		try{
			Connection con=CarsListDao.getConnection();
			PreparedStatement st=con.prepareStatement("select * from carlist where carnumber=?");
			st.setString(1,carNumber );
			
			ResultSet rs=st.executeQuery();
			
			while(rs.next())
			{
				CarsList c=new CarsList();
				c.setCarNumber(rs.getString(1));
				c.setTime(rs.getString(2));
				cl.add(c);
			}
		
		}
		catch(Exception e){e.printStackTrace();}
		
		return cl;
	}
	
	
}
