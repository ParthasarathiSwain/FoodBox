package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Bean.Order;
import Bean.Payment;
import Util.DbConnection;

public class CheckoutDao {
	// save  Payment
	public int savePayment(Payment payment) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="INSERT INTO Payment(transcation_id,payment_date,total_amount,card_num,expairy_date,cvv,id)VALUES(?,now(),?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1, payment.getTranscation_id());	
			ps.setDouble(2, payment.getTotal_amount());
			ps.setString(3, payment.getCard_num());
			ps.setString(4,payment.getExpairy_date());
			ps.setString(5,payment.getCvv());
			ps.setInt(6, payment.getCus_id());
			status=ps.executeUpdate();
			con.close();  
		}  catch (SQLException e) {e.printStackTrace();}	
		return status;
	} 
	// fatch  PaymentId
	public int getPaymentId(int tid,int cusid ) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String query="Select Payment_id from payment where transcation_id=? and id=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setInt(1,tid );		
			ps.setInt(2, cusid);
			ResultSet rs=ps.executeQuery(); 
			while(rs.next())
			{
				status=rs.getInt(1);

			}
		}catch(Exception ex){ex.printStackTrace();}
		return status;
	} 
	// save  order
	public boolean saveOrder(List<Order> orderList) {

		boolean b=true;
		try {
			Connection con=DbConnection.getConnection();
			con.setAutoCommit(false);

			PreparedStatement ps=null;
			for(Order o: orderList) {
				String query="INSERT into foodbox.order (order_Amount,invoice_num,qty,date,payment_id,id,item_id,address,pincode) VALUES(?,?,?,now(),?,?,?,?,?)";
				ps=con.prepareStatement(query);
				ps.setDouble(1, o.getOrder_Amount());
				ps.setInt(2, o.getInvoice_num());
				ps.setInt(3, o.getQty());
				ps.setInt(4, o.getPayment_id());
				ps.setInt(5, o.getCus_id());
				ps.setInt(6, o.getItem_id());
				ps.setString(7, o.getAddress());
				ps.setString(8, o.getPincode());
				ps.executeUpdate();

			}

			ps.executeBatch(); con.commit(); con.setAutoCommit(true);

		}  catch (SQLException e) {e.printStackTrace();}	
		return b;
	} 
	//view Orders
	public List<Order> getAllOrder(){
		ArrayList<Order> orderList=new ArrayList<Order>();//Creating Arraylist 
		try {
			Connection con = DbConnection.getConnection();
			String sql="select A.order_id,A.order_Amount,A.invoice_num,A.qty,A.date,A.address,A.pincode,B.name ,C.item_name from foodbox.order A inner join  foodbox.user B on A.id=B.id INNER JOIN foodbox.item C on A.item_id=C.item_id";
			PreparedStatement ps=con.prepareStatement(sql);  
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Order order = new Order();
				order.setOrder_id(rs.getInt(1));
				order.setOrder_Amount(rs.getDouble(2));
				order.setInvoice_num(rs.getInt(3));
				order.setQty(rs.getInt(4));
				order.setDate(rs.getString(5));
				order.setAddress(rs.getString(6));
				order.setPincode(rs.getString(7));
				order.setName(rs.getString(8));
				order.setItem_name(rs.getString(9));
				orderList.add(order);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return orderList ;	
	}
	//view order by Customer Id
	public List<Order> getOrderByCutomerId( int custid){
		ArrayList<Order> orderList=new ArrayList<Order>();//Creating Arraylist 
		try {
			Connection con = DbConnection.getConnection();
			String sql="select A.order_id,A.order_Amount,A.invoice_num,A.qty,A.date,A.address,A.pincode,C.item_name ,C.item_image from foodbox.order A inner join  foodbox.item C on A.item_id=C.item_id where id=?";
			PreparedStatement ps=con.prepareStatement(sql); 
			ps.setInt(1, custid);
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Order order = new Order();
				order.setOrder_id(rs.getInt(1));
				order.setOrder_Amount(rs.getDouble(2));
				order.setInvoice_num(rs.getInt(3));
				order.setQty(rs.getInt(4));
				order.setDate(rs.getString(5));
				order.setAddress(rs.getString(6));
				order.setPincode(rs.getString(7));
				order.setItem_name(rs.getString(8));
				order.setItem_image(rs.getString(9));
				orderList.add(order);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return orderList ;	
	}
	//view payments
	public List<Payment> getAllpayment(){
		ArrayList<Payment> paymentList=new ArrayList<>();//Creating Arraylist 
		try {
			Connection con = DbConnection.getConnection();
			String sql="select A.payment_id	,A.transcation_id,A.payment_date,A.total_amount,A.card_num,A.expairy_date,A.cvv,B.name  from foodbox.payment A inner join  foodbox.user B on A.id=B.id ";
			PreparedStatement ps=con.prepareStatement(sql);  
			ResultSet rs=ps.executeQuery();  
			while(rs.next())
			{
				Payment payment = new Payment();
				payment.setPayment_id(rs.getInt(1));
				payment.setTranscation_id(rs.getInt(2));
				payment.setPayment_date(rs.getString(3));
				payment.setTotal_amount(rs.getDouble(4));
				payment.setCard_num(rs.getString(5));
				payment.setExpairy_date(rs.getString(6));
				payment.setCvv(rs.getString(7));
				payment.setName(rs.getString(8));
				paymentList.add(payment);
			}
			con.close();  
		}catch(Exception ex) {ex.printStackTrace();}
		return paymentList ;	
	}
	//count orders
	public int countOrders( ) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String sql="SELECT count(*) FROM foodbox.order ";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				status=rs.getInt(1);
			}
		}catch (SQLException e) {e.printStackTrace();}
		return status;
	}
	//count Revenue
	public int countRevenue( ) {
		int status=0;
		try {
			Connection con=DbConnection.getConnection();
			String sql="SELECT sum(total_amount)  FROM foodbox.payment;";
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
