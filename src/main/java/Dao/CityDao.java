package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Bean.City;
import Util.DbConnection;

public class CityDao {
	// save  City
	public int saveCity(String cityname) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="INSERT INTO city(city_name)VALUES(?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,cityname);				
			status=ps.executeUpdate();
			con.close();  
		}  catch (SQLException e) {e.printStackTrace();}	
		return status;
	} 
	//view City
	public List<City> getCity(){
		ArrayList<City> cityList=new ArrayList<City>();//Creating Arraylist 
		try {
			Connection con = DbConnection.getConnection();
			String sql="select city_id,city_name from city";
			PreparedStatement ps=con.prepareStatement(sql);  
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				City city = new City();
				city.setCity_id(rs.getInt(1));
				city.setCity_name(rs.getString(2));
				cityList.add(city);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return cityList ;	
	}

	//delete City			
	public  int deleteCity(int city_id){  
		int status=0;
		try{  
			Connection con=DbConnection.getConnection(); 
			String sql="delete from city where city_id=?";
			PreparedStatement ps=con.prepareStatement(sql);  
			ps.setInt(1,city_id);  
			status =ps.executeUpdate();  
		}catch(Exception e){System.out.println(e);}  				  
		return status;  
	}
	// sort City by Id
	public  List<City> sortCityById(int city_id){
		ArrayList<City> obj=new ArrayList<City>();
		try {
			Connection con = DbConnection.getConnection();
			String sql="Select city_id,city_name from city where city_id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, city_id);
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				City city = new City();
				city.setCity_id(rs.getInt(1));
				city.setCity_name(rs.getString(2));
				obj.add(city);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return obj ;
	}
	//update City
	public void updateCity(String city_name,int city_id) {
		try {
			Connection con=DbConnection.getConnection();
			PreparedStatement ps=con.prepareStatement("update city set city_name=?  where city_id=?");
			ps.setString(1,city_name);
			ps.setInt(2,city_id);					
			ps.executeUpdate();
		}catch (SQLException e) {e.printStackTrace();}
	}	
}
