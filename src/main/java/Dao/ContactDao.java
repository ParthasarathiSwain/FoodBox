package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Bean.ContactUs;
import Util.DbConnection;

public class ContactDao {
	// save  Category
	public int saveContact(ContactUs c) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="INSERT INTO contact(full_name,email,phone,message)VALUES(?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,c.getFull_name());	
			ps.setString(2,c.getEmail());	
			ps.setString(3,c.getPhone());	
			ps.setString(4,c.getMessage());	
			status=ps.executeUpdate();
			con.close();  
		}  catch (SQLException e) {e.printStackTrace();}	
		return status;
	} 
}
