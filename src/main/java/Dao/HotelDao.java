package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Bean.Hotel;
import Util.DbConnection;

public class HotelDao {
	// save  Hotel
	public int saveHotel(Hotel hotel) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="INSERT INTO Hotel(hotel_name,hotel_description,hotel_address,hotel_regi_date,hotel_image,city_id)VALUES(?,?,?,now(),?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, hotel.getHotel_name());
			ps.setString(2, hotel.getHotel_description());
			ps.setString(3, hotel.getHotel_address());
			ps.setString(4, hotel.getHotel_image());
			ps.setInt(5, hotel.getCity_id());
			status=ps.executeUpdate();
			con.close();  
		}  catch (SQLException e) {e.printStackTrace();}	
		return status;
	} 
	//view Hotel
	public List<Hotel> getHotels(){
		ArrayList<Hotel> hotelList=new ArrayList<Hotel>();//Creating Arraylist 
		try {
			Connection con = DbConnection.getConnection();
			String sql="select A.hotel_id,A.hotel_name,A.hotel_description,A.hotel_address,A.hotel_regi_date,A.hotel_image,B.city_name from hotel A inner join  City B where A.city_id=B.city_id";
			PreparedStatement ps=con.prepareStatement(sql);  
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Hotel hotel = new Hotel();
				hotel.setHotel_id(rs.getInt(1));
				hotel.setHotel_name(rs.getString(2));
				hotel.setHotel_description(rs.getString(3));
				hotel.setHotel_address(rs.getString(4));
				hotel.setHotel_regi_date(rs.getString(5));
				hotel.setHotel_image(rs.getString(6));
				hotel.setCity_name(rs.getString(7));
				hotelList.add(hotel);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return hotelList ;	
	}

	//delete hotel			
	public  int deleteHotel(int id){  
		int status=0;
		try{  
			Connection con=DbConnection.getConnection(); 
			String sql="delete from hotel where hotel_id=?";
			PreparedStatement ps=con.prepareStatement(sql);  
			ps.setInt(1,id);  
			status =ps.executeUpdate();  
		}catch(Exception e){System.out.println(e);}  				  
		return status;  
	}
	// sort Hotel by Id
	public  List<Hotel> sortHotelById(int hotel_id){
		ArrayList<Hotel> hotelList=new ArrayList<Hotel>();
		try {
			Connection con = DbConnection.getConnection();
			String sql="Select hotel_id,hotel_name,hotel_description,hotel_address,city_id from hotel where hotel_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, hotel_id);
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Hotel hotel = new Hotel();
				hotel.setHotel_id(rs.getInt(1));
				hotel.setHotel_name(rs.getString(2));
				hotel.setHotel_description(rs.getString(3));
				hotel.setHotel_address(rs.getString(4));
				hotel.setCity_id(rs.getInt(5));   		    	
				hotelList.add(hotel);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return hotelList ;
	}
	//update Hotel
	public void updateHotel(Hotel hotel) {
		try {
			Connection con=DbConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("update hotel set hotel_name=?,hotel_description=?,hotel_address=?,city_id=?,hotel_image=?  where hotel_id=?");
			ps.setString(1,hotel.getHotel_name());
			ps.setString(2,hotel.getHotel_description());
			ps.setString(3,hotel.getHotel_address());
			ps.setInt(4,hotel.getCity_id());
			ps.setString(5,hotel.getHotel_image());
			ps.setInt(6,hotel.getHotel_id());
			ps.executeUpdate();
		}catch (SQLException e) {e.printStackTrace();}
	}
}
