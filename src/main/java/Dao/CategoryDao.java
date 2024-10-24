package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Bean.Category;
import Util.DbConnection;

public class CategoryDao {
	// save  Category
	public int saveCategory(String category_name) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="INSERT INTO category(category_name)VALUES(?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,category_name);				
			status=ps.executeUpdate();
			con.close();  
		}  catch (SQLException e) {e.printStackTrace();}	
		return status;
	} 

	//view Category
	public List<Category> getCategory(){
		ArrayList<Category> categoryList=new ArrayList<Category>();//Creating Arraylist 
		try {
			Connection con = DbConnection.getConnection();
			String sql="select category_id,category_name from category";
			PreparedStatement ps=con.prepareStatement(sql);  
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Category category = new Category();
				category.setCategory_id(rs.getInt(1));
				category.setCategory_name(rs.getString(2));		   		    	
				categoryList.add(category);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return categoryList ;	
	}

	//delete Category	
	public  int deleteCategory(int category_id){  
		int status=0;
		try{  
			Connection con=DbConnection.getConnection(); 
			String sql="delete from Category where category_id=?";
			PreparedStatement ps=con.prepareStatement(sql);  
			ps.setInt(1,category_id);  
			status =ps.executeUpdate();  
		}catch(Exception e){System.out.println(e);}  				  
		return status;  
	}
	// sort Category by Id
	public  List<Category> sortCategoryById(int category_id){
		ArrayList<Category> obj=new ArrayList<Category>();
		try {
			Connection con = DbConnection.getConnection();
			String sql="Select category_id,category_name from Category where category_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, category_id);
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Category category = new Category();
				category.setCategory_id(rs.getInt(1));
				category.setCategory_name(rs.getString(2));		   		    	
				obj.add(category);		   		    	
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return obj ;
	}
	//update Category
	public void updateCategory(String category_name,int category_id) {
		try {
			Connection con=DbConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("update Category set category_name=?  where category_id=?");
			ps.setString(1,category_name);
			ps.setInt(2,category_id);					
			ps.executeUpdate();
		}catch (SQLException e) {e.printStackTrace();}
	}	
}
