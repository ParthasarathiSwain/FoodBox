package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Bean.Cart;
import Util.DbConnection;



public class CartDao {
	public int addToCart(Cart cart) {
		int sts=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="insert into cart(cart_qty,cart_price,cart_Amount,id,item_id,hotel_id) values(?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);			
			ps.setInt(1,cart.getCart_qty());
			ps.setDouble(2,cart.getCart_price());
			ps.setDouble(3,cart.getCart_Amount());
			ps.setInt(4,cart.getCus_id());
			ps.setInt(5,cart.getItem_id());
			ps.setInt(6,cart.getHotel_id());
			sts=ps.executeUpdate();							
		}  catch (SQLException e) {	e.printStackTrace();}
		return sts;
	}
	public List<Cart> getCartByCustomerId(int cusId) {
		ArrayList<Cart> cartlist=new ArrayList<Cart>(); 
		try {
			Connection con = DbConnection.getConnection();
			String sql="SELECT  sum(A.cart_price) as cartPrice,A.item_id ,sum(A.cart_Amount) as cartAmount,sum(A.cart_qty) as cartQty ,A.id,B.item_name,B.item_image from foodbox.cart A inner join foodbox.item B on A.item_id=B.item_id and A.id=? group by A.item_id"; 		    
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1,cusId);
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Cart cart=new Cart();    		    	
				cart.setCart_price(rs.getDouble(1));
				cart.setItem_id(rs.getInt(2));
				cart.setCart_Amount(rs.getDouble(3));
				cart.setCart_qty(rs.getInt(4)); 		    	
				cart.setCus_id(rs.getInt(5));
				cart.setItem_name(rs.getString(6));
				cart.setItem_image(rs.getString(7));
				cartlist.add(cart);
			}
		}catch(Exception ex){}finally{}
		return cartlist ;
	}

	/*
	 * public static double getCartAmount(int cusId) { double cartAmount=0.0; try {
	 * Connection con = DbConnection.getConnection(); String
	 * sql="SELECT  sum(cart_Amount) as cartAmount from cart where cus_id=? ";
	 * PreparedStatement ps=con.prepareStatement(sql); ps.setInt(1,cusId); ResultSet
	 * rs=ps.executeQuery();
	 * 
	 * while(rs.next()) { cartAmount= rs.getDouble(1) ;
	 * 
	 * } }catch(Exception ex){}finally{} return cartAmount ; }
	 */
	//delete Cart
	public  void deleteCartItem(int cusId,String item_id){  			
		try{  
			Connection con=DbConnection.getConnection(); 
			String sql="delete from Cart where id=? and item_id in('"+item_id+"')";
			PreparedStatement ps=con.prepareStatement(sql);  
			ps.setInt(1,cusId); 			      
			ps.executeUpdate();  
		}catch(Exception e){System.out.println(e);}  			    
	}
}
