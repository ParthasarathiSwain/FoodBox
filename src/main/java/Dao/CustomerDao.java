package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Bean.User;
import Util.DbConnection;

public class CustomerDao {
	// fatch Password
	public String fatchPassWord(int id) {
		String status="";
		try{  
			Connection con=DbConnection.getConnection(); 
			String sql="Select Password from  foodbox.user where id=?";
			PreparedStatement ps=con.prepareStatement(sql);  
			ps.setInt(1,id);  
			ResultSet rs=ps.executeQuery(); 
			while(rs.next())
			{
				status=rs.getString(1);

			}
		}catch(Exception e){System.out.println(e);}  

		return status;  
	}
	// change Password
	public int updatePassword(String confirm ,int id) {
		int status=0;
		try{  
			Connection con=DbConnection.getConnection(); 
			String sql="update user set Password=?  where id=?";
			PreparedStatement ps=con.prepareStatement(sql);  
			ps.setString(1,confirm); 
			ps.setInt(2,id);
			status=ps.executeUpdate(); 

		}catch(Exception e){System.out.println(e);}  	
		return status;
	}
	// save  Customer
	public int addCustomer(User user) {
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
			ps.setString(6,"2");
			ps.setString(7,user.getImage());
			status=ps.executeUpdate();
			con.close();  
		}  catch (SQLException e) {e.printStackTrace();}	
		return status;
	} 
	// get role  & id & name & image
	public User getIdAndRoleName(String email, String password) {
		User user =new User();
		try {
			Connection con = DbConnection.getConnection();
			String sql="Select id ,name, role ,image from user where email=? and password=?";
			PreparedStatement ps=con.prepareStatement(sql);  
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setRole(rs.getInt(3));
				user.setImage(rs.getString(4));

			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return user;

	}
	//view Customers
	public List<User> viewCustomers(){
		ArrayList<User> customerList=new ArrayList<User>();//Creating Arraylist 
		try {
			Connection con = DbConnection.getConnection();
			String sql="select id,name,phno,email,address,image,regiDate from user where role=2";
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
	//delete customer

	public static int deleteCustomer(int id){  
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
	// sort Customer by Id
	public  List<User> sortCustomerById(int id){
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

	//update Customer
	public void updateCustomer(User user) {
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
	//update Customer without image
	public int updateCustomer2(User user) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("update user set name=?,phno=?,email=?,address=? where id=?");
			ps.setString(1,user.getName());
			ps.setString(2,user.getCno());
			ps.setString(3,user.getEmail());
			ps.setString(4,user.getAddress());
			ps.setInt(5,user.getId());
			status=ps.executeUpdate();
		}catch (SQLException e) {e.printStackTrace();}
		return status;
	}	
	//count Customer
	public int countCustomer( ) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String sql="SELECT count(*) FROM foodbox.user where role=2";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				status=rs.getInt(1);
			}
		}catch (SQLException e) {e.printStackTrace();}
		return status;
	}
}
