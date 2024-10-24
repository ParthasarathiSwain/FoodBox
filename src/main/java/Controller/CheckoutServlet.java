package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import Bean.Cart;
import Bean.Category;
import Bean.Order;
import Bean.Payment;
import Dao.CartDao;
import Dao.CategoryDao;
import Dao.CheckoutDao;
import Dao.CustomerDao;

@WebServlet("/checkoutServlet")
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;          
	public CheckoutServlet() {     
	}	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html:charset=UTF-8");
		PrintWriter out=response.getWriter();
		String event=request.getParameter("event");

		if(event.equals("PlaceOrder")) {
			HttpSession session=request.getSession(false);
			int cus_id=(Integer)session.getAttribute("id");												
			int transcation_id=genRandom();
			double totalAmount=Double.parseDouble(request.getParameter("totalamount"));
			String card_num=request.getParameter("cardnum");
			String expairy_date=request.getParameter("exDate");
			String cvv=request.getParameter("cvv");
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");	
			int country=Integer.parseInt(request.getParameter("country_id"));



			Payment payment=new Payment();
			payment.setCard_num(card_num);
			payment.setCus_id(cus_id);
			payment.setCvv(cvv);
			payment.setExpairy_date(expairy_date);
			payment.setTranscation_id(transcation_id);
			payment.setTotal_amount(totalAmount);

			int status=0;
			CheckoutDao chkDao=new CheckoutDao();
			status=chkDao.savePayment(payment);
			int payment_id=chkDao.getPaymentId(transcation_id,cus_id);
			String address=request.getParameter("address");
			String pincode=request.getParameter("pincode");
			int invoice_num=genRandom();
			if(status==1) {
				CartDao ob=new CartDao();
				List<Cart> cList = ob.getCartByCustomerId(cus_id);
				ArrayList<Order> al=new ArrayList<Order>();
				for(Cart c: cList) {
					Order order=new Order();
					order.setAddress(address);
					order.setPincode(pincode);
					order.setCus_id(cus_id);
					order.setPayment_id(payment_id);
					order.setInvoice_num(invoice_num);					
					order.setItem_id(c.getItem_id());
					order.setOrder_Amount(c.getCart_Amount());
					order.setQty(c.getCart_qty());
					al.add(order);
				}
				boolean x=chkDao.saveOrder(al);
				if(x==true) {
					out.println("done");
				}
				else {
					out.println("failed");
				}
			}
		}
		else if(event.equals("getOrders")) {
			try {
				CheckoutDao cd=new CheckoutDao();
				List<Order> orderList = cd.getAllOrder();
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(orderList);			    
				out.print(JSONObject);				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(event.equals("getPayments")) {
			try {
				CheckoutDao cd=new CheckoutDao();
				List<Payment> paymentList = cd.getAllpayment();
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(paymentList);			    
				out.print(JSONObject);				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		//view order through customer
		else if(event.equals("viewOrderByCustomerId")) {
			try {
				HttpSession session = request.getSession(true);
				String id= session.getAttribute("id").toString();
				int id2=Integer.parseInt(id);
				CheckoutDao cd=new CheckoutDao();
				List<Order> orderList = cd.getOrderByCutomerId(id2);
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(orderList);			    
				out.print(JSONObject);				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(event.equals("countOrders")){
			CheckoutDao cd=new CheckoutDao();
			int count=cd.countOrders();			
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(count);
			out.print(JSONObject);
		}
		else if(event.equals("countRevenue")){
			CheckoutDao cd=new CheckoutDao();
			int count=cd.countRevenue();			
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(count);
			out.print(JSONObject);
		}
	}
	//Generating 6 digit Random Number
	public int genRandom() {
		Random r = new Random( System.currentTimeMillis() );
		return ((1 + r.nextInt(2)) * 100000 + r.nextInt(100000));
	}
}
