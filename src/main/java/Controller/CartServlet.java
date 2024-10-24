package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import Bean.Cart;
import Dao.CartDao;
@WebServlet("/cartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CartServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html:charset=UTF-8");
		PrintWriter out=response.getWriter();
		String event=request.getParameter("event");

		HttpSession session = request.getSession();
		if(event.equals("addToCart")) {
			int item_id=Integer.parseInt(request.getParameter("itemId"));
			int hotel_id=Integer.parseInt(request.getParameter("hotelId"));
			int cart_qty=Integer.parseInt(request.getParameter("qty"));
			double unitprice=Double.parseDouble(request.getParameter("unitprice"));
			double  totalPrice = cart_qty*unitprice;
			

			if(session.getAttribute("id")==null || (session.getAttribute("id")).equals("")) {
				out.print("nocart");
			}else {
				int cusId=(int)session.getAttribute("id");
				Cart cart=new Cart();
				cart.setCart_Amount(totalPrice);
				cart.setCart_price(unitprice);
				cart.setItem_id(item_id);
				cart.setHotel_id(hotel_id);
				cart.setCart_qty(cart_qty);
				cart.setCus_id(cusId);
				CartDao ob=new CartDao();
				if((ob.addToCart(cart)) ==1) {
					List<Cart> cartlist=ob.getCartByCustomerId(cusId);	
					session.setAttribute("cartCount", cartlist.size());
					GsonBuilder gsonBuilder = new GsonBuilder();
					Gson  gson = gsonBuilder.create();
					String JSONObject = gson.toJson(cartlist);
					out.print(JSONObject);					
				}		
			}//inner else				
		}
		else if(event.equals("viewCartIteam")) {
			int cusId=(int)session.getAttribute("id");
			CartDao ob=new CartDao();
			List<Cart> carts = ob.getCartByCustomerId(cusId);
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(carts);
			out.print(JSONObject);
		}
		else if(event.equals("cart_delete")) {			
			int cusId=(int)session.getAttribute("id");
			String item_id=request.getParameter("itemId");
			CartDao ob=new CartDao();
			ob.deleteCartItem(cusId,item_id);			
			List<Cart> carts = ob.getCartByCustomerId(cusId);
			session.setAttribute("cartCount", carts.size());
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(carts);
			out.print(JSONObject);

		}
	}

}
