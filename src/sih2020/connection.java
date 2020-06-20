package sih2020;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Date;

import javax.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

public class connection {
	public static Connection getConnection()
	{
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sih2020?useTimezone=true&serverTimezone=UTC" , "root", "");
			 return con;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
		
	}
	
	
}
