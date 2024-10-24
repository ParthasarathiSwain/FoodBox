package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Bean.Item;
import Util.DbConnection;

public class ItemDao {
	// save  Item
	public int saveItem(Item item) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="INSERT INTO item(item_name,item_description,item_price,item_image,hotel_id,category_id)VALUES(?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, item.getItem_name());
			ps.setString(2, item.getItem_description());
			ps.setDouble(3, item.getItem_price());
			ps.setString(4,item.getItem_image() );
			ps.setInt(5, item.getHotel_id());
			ps.setInt(6, item.getCategory_id());
			status=ps.executeUpdate();
			con.close();  
		}  catch (SQLException e) {e.printStackTrace();}	
		return status;
	} 
	//view Item
	public List<Item> getItems(){
		ArrayList<Item> itemList=new ArrayList<Item>();//Creating Arraylist 
		try {
			Connection con = DbConnection.getConnection();
			String sql="select A.item_id,A.item_name,A.item_description,A.item_price,A.item_image,A.item_status,B.category_name,C.hotel_name from item A inner join  Category B on A.category_id=B.category_id inner join Hotel C on A.hotel_id=C.hotel_id";          
			PreparedStatement ps=con.prepareStatement(sql);  
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Item item=new Item();
				item.setItem_id(rs.getInt(1));
				item.setItem_name(rs.getString(2));
				item.setItem_description(rs.getString(3));
				item.setItem_price(rs.getDouble(4));
				item.setItem_image(rs.getString(5));
				item.setItem_status(rs.getInt(6));
				item.setCategory_name(rs.getString(7));
				item.setHotel_name(rs.getString(8));
				itemList.add(item);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return itemList ;	
	}

	//delete Item			
	public  int deleteItem(int item_id){  
		int status=0;
		try{  
			Connection con=DbConnection.getConnection(); 
			String sql="delete from Item where item_id=?";
			PreparedStatement ps=con.prepareStatement(sql);  
			ps.setInt(1,item_id);  
			status =ps.executeUpdate();  
		}catch(Exception e){System.out.println(e);}  				  
		return status;  
	}
	// sort Item by Id
	public  List<Item> sortItemById(int item_id){
		ArrayList<Item> itemList=new ArrayList<Item>();
		try {
			Connection con = DbConnection.getConnection();
			String sql="Select item_id,item_name,item_description,item_price,item_image,item_status,category_id,hotel_id from item where item_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, item_id);
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Item item = new Item();
				item.setItem_id(rs.getInt(1));
				item.setItem_name(rs.getString(2));
				item.setItem_description(rs.getString(3));
				item.setItem_price(rs.getDouble(4));
				item.setItem_image(rs.getString(5));
				item.setItem_status(rs.getInt(6));
				item.setCategory_id(rs.getInt(7));
				item.setHotel_id(rs.getInt(8));  	
				itemList.add(item);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return itemList ;
	}
	//update Item
	public void updateItem(Item item) {
		try {
			Connection con=DbConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("update item set item_name=?,item_description=?,item_price=?,item_image=?,category_id=?,hotel_id=? where item_id=?");
			ps.setString(1,item.getItem_name());
			ps.setString(2,item.getItem_description());
			ps.setDouble(3,item.getItem_price());
			ps.setString(4,item.getItem_image());
			ps.setInt(5,item.getCategory_id());
			ps.setInt(6,item.getHotel_id());
			ps.setInt(7,item.getItem_id());
			ps.executeUpdate();
		}catch (SQLException e) {e.printStackTrace();}
	}
	// sort Item by Hotel Id
	public  List<Item> sortItemByHotelId(int hotel_id){
		ArrayList<Item> itemList=new ArrayList<Item>();
		try {
			Connection con = DbConnection.getConnection();
			String sql="Select item_id,item_name,item_description,item_price,item_image,item_status,category_id,hotel_id from item where hotel_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, hotel_id);
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Item item = new Item();
				item.setItem_id(rs.getInt(1));
				item.setItem_name(rs.getString(2));
				item.setItem_description(rs.getString(3));
				item.setItem_price(rs.getDouble(4));
				item.setItem_image(rs.getString(5));
				item.setItem_status(rs.getInt(6));
				item.setCategory_id(rs.getInt(7));
				item.setHotel_id(rs.getInt(8));  	
				itemList.add(item);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return itemList ;
	}
	//Sort by category_id
	public List<Item> getItemsByCategory(int category_id){
		ArrayList<Item> itemList=new ArrayList<Item>();
		try {
			Connection con = DbConnection.getConnection();
			String sql="Select item_id,item_name,item_description,item_price,item_image,item_status,category_id,hotel_id from item where category_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, category_id);
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Item item = new Item();
				item.setItem_id(rs.getInt(1));
				item.setItem_name(rs.getString(2));
				item.setItem_description(rs.getString(3));
				item.setItem_price(rs.getDouble(4));
				item.setItem_image(rs.getString(5));
				item.setItem_status(rs.getInt(6));
				item.setCategory_id(rs.getInt(7));
				item.setHotel_id(rs.getInt(8));  	
				itemList.add(item);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return itemList ;	  			   

	}
	//Sort by category_id and  hotel_id
	public List<Item> getItemsByCategoryAndHotel(int category_id,int hotel_id){
		ArrayList<Item> itemList=new ArrayList<Item>();
		try {
			Connection con = DbConnection.getConnection();
			String sql="Select item_id,item_name,item_description,item_price,item_image,item_status,category_id,hotel_id from item where category_id=? and hotel_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, category_id);
			ps.setInt(2, hotel_id);
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Item item = new Item();
				item.setItem_id(rs.getInt(1));
				item.setItem_name(rs.getString(2));
				item.setItem_description(rs.getString(3));
				item.setItem_price(rs.getDouble(4));
				item.setItem_image(rs.getString(5));
				item.setItem_status(rs.getInt(6));
				item.setCategory_id(rs.getInt(7));
				item.setHotel_id(rs.getInt(8));  	
				itemList.add(item);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return itemList ;	  			   

	}
	// sort Item by Id and hotel Id
	public  List<Item> sortItemByIdandHotelid(int item_id,int hotel_id){
		ArrayList<Item> itemList=new ArrayList<Item>();
		try {
			Connection con = DbConnection.getConnection();
			String sql="Select item_id,item_name,item_description,item_price,item_image,item_status,category_id,hotel_id from item where item_id=? and hotel_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, item_id);
			ps.setInt(2, hotel_id);
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Item item = new Item();
				item.setItem_id(rs.getInt(1));
				item.setItem_name(rs.getString(2));
				item.setItem_description(rs.getString(3));
				item.setItem_price(rs.getDouble(4));
				item.setItem_image(rs.getString(5));
				item.setItem_status(rs.getInt(6));
				item.setCategory_id(rs.getInt(7));
				item.setHotel_id(rs.getInt(8));  	
				itemList.add(item);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return itemList ;
	}
	// sort Item by Id and hotel Id
	public  List<Item> sortItemByItemId(int item_id){
		ArrayList<Item> itemList=new ArrayList<Item>();
		try {
			Connection con = DbConnection.getConnection();
			String sql="Select item_id,item_name,item_description,item_price,item_image,item_status,category_id,hotel_id from item where item_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, item_id);		  		     
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Item item = new Item();
				item.setItem_id(rs.getInt(1));
				item.setItem_name(rs.getString(2));
				item.setItem_description(rs.getString(3));
				item.setItem_price(rs.getDouble(4));
				item.setItem_image(rs.getString(5));
				item.setItem_status(rs.getInt(6));
				item.setCategory_id(rs.getInt(7));
				item.setHotel_id(rs.getInt(8));  	
				itemList.add(item);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return itemList ;
	}
}
