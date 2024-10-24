package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Bean.User;
import Util.DbConnection;

public class AdminDao {
	// save  Admin
	public int saveAdmin(User user) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="INSERT INTO user(Name,Phno,Email,Password,address,role,image,regiDate)VALUES(?,?,?,?,?,?,?,now())";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,user.getName());
			ps.setString(2,user.getCno());
			ps.setString(3,user.getEmail());
			ps.setString(4,user.getPassword());
			ps.setString(5,user.getAddress());
			ps.setString(6,"3");
			ps.setString(7,user.getImage());
			status=ps.executeUpdate();
			con.close();  
		}  catch (SQLException e) {e.printStackTrace();}	
		return status;
	} 

	//view Admin
	public List<User> getAdmins(){
		ArrayList<User> customerList=new ArrayList<User>();//Creating Arraylist 
		try {
			Connection con = DbConnection.getConnection();
			String sql="select id,name,phno,email,address,image,regidate from user where role=3";
			PreparedStatement ps=con.prepareStatement(sql);  
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				User user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setCno(rs.getString(3));
				user.setEmail(rs.getString(4));
				user.setAddress(rs.getString(5));
				user.setImage(rs.getString(6));
				user.setRegiDate(rs.getString(7));
				customerList.add(user);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return customerList ;	
	}

	//delete Admin			
	public  int deleteAdmin(int id){  
		int status=0;
		try{  
			Connection con=DbConnection.getConnection(); 
			String sql="delete from user where id=?";
			PreparedStatement ps=con.prepareStatement(sql);  
			ps.setInt(1,id);  
			status =ps.executeUpdate();  
		}catch(Exception e){System.out.println(e);}  				  
		return status;  
	}
	// sort Admin by Id
	public  List<User> sortAdminById(int id){
		ArrayList<User> obj=new ArrayList<User>();
		try {
			Connection con = DbConnection.getConnection();
			String sql="Select id,name,phno,email,address,image from User where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				User user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setCno(rs.getString(3));
				user.setEmail(rs.getString(4));
				user.setAddress(rs.getString(5));
				user.setImage(rs.getString(6));
				obj.add(user);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return obj ;
	}
	//update Admin
	public void updateAdmin(User user) {
		try {
			Connection con=DbConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("update user set name=?,phno=?,email=?,address=?,image=?  where id=?");
			ps.setString(1,user.getName());
			ps.setString(2,user.getCno());
			ps.setString(3,user.getEmail());
			ps.setString(4,user.getAddress());
			ps.setString(5,user.getImage());
			ps.setInt(6,user.getId());
			ps.executeUpdate();
		}catch (SQLException e) {e.printStackTrace();}
	}	
}
