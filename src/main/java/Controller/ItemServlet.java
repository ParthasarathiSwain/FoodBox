package Controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import Bean.Item;
import Dao.ItemDao;
import Util.DbConnection;

@WebServlet("/itemServlet")
@MultipartConfig(maxFileSize = 1024 * 1024 * 2)
public class ItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public ItemServlet() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html:charset=UTF-8");
		PrintWriter out=response.getWriter();
		String event=request.getParameter("event");		
		if(event.equals("addItem")) {
			String item_name=request.getParameter("itemname");
			String item_description=request.getParameter("itemdesc");
			double item_price=Double.parseDouble(request.getParameter("itemprice"));
			int hotel_id=Integer.parseInt(request.getParameter("hotel"));
			int category_id=Integer.parseInt(request.getParameter("category"));
			Part p1=request.getPart("image");
			String Path=DbConnection.Path2();

			String appPath =Path+"/itemImg";
			String imagePath = appPath + "";
			File fileDir = new File(imagePath);
			if (!fileDir.exists()) 
				fileDir.mkdirs();
			//Get Image Name
			String imageName1 = p1.getSubmittedFileName();
			String fileExt1 = imageName1.substring(imageName1.length()-3);
			String imgname1=new Date().getTime() +"1"+"."+fileExt1;

			String finalImgPath1="itemImg" + "/"+ imgname1;

			if(validateImage1(imageName1)){
				try{
					p1.write(imagePath + "/" + imgname1);
				}catch (Exception ex) { }
			}else{ out.print("<script> alert('Invalid Image Format')</script>");  }
			Item item=new Item();
			item.setCategory_id(category_id);
			item.setHotel_id(hotel_id);
			item.setItem_description(item_description);
			item.setItem_image(imgname1);
			item.setItem_name(item_name);
			item.setItem_price(item_price);
			ItemDao id=new ItemDao();
			int x=id.saveItem(item);
			if(x==1) {
				out.print("done");			        			        					
			}
		}
		else if(event.equals("getItems")) {
			try {
				ItemDao id=new ItemDao();
				List<Item> item = id.getItems();
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(item);			    
				out.print(JSONObject);				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(event.equals("item_delete")){
			int item_id=Integer.parseInt(request.getParameter("itemId"));
			ItemDao id=new ItemDao();
			String status=id.deleteItem(item_id)==1?"done":"";
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(status);		    
			out.print(JSONObject);			
		}
		else if(event.equals("fatchItemById")) {
			try {
				int item_id=Integer.parseInt(request.getParameter("itemId"));
				ItemDao id=new ItemDao();
				List<Item> item = id.sortItemById(item_id);
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(item);		    
				out.print(JSONObject);
			}catch(Exception e) {e.printStackTrace();}
		}
		else if(event.equals("updateItem")) {
			int item_id=Integer.parseInt(request.getParameter("itemid"));
			String item_name=request.getParameter("itemname");
			String item_description=request.getParameter("itemdesc");
			double item_price=Double.parseDouble(request.getParameter("itemprice"));
			int hotel_id=Integer.parseInt(request.getParameter("hotel"));
			int category_id=Integer.parseInt(request.getParameter("category"));
			Part p1=request.getPart("image");
			String Path=DbConnection.Path2();

			String appPath =Path+"/itemImg";
			String imagePath = appPath + "";
			File fileDir = new File(imagePath);
			if (!fileDir.exists()) 
				fileDir.mkdirs();
			//Get Image Name
			String imageName1 = p1.getSubmittedFileName();
			String fileExt1 = imageName1.substring(imageName1.length()-3);
			String imgname1=new Date().getTime() +"1"+"."+fileExt1;

			String finalImgPath1="itemImg" + "/"+ imgname1;

			if(validateImage1(imageName1)){
				try{
					p1.write(imagePath + "/" + imgname1);
				}catch (Exception ex) { }
			}else{ out.print("<script> alert('Invalid Image Format')</script>");  }
			Item item=new Item();
			item.setCategory_id(category_id);
			item.setHotel_id(hotel_id);
			item.setItem_description(item_description);
			item.setItem_image(imgname1);
			item.setItem_name(item_name);
			item.setItem_price(item_price);
			item.setItem_id(item_id);
			ItemDao id=new ItemDao();
			id.updateItem(item);
			out.print("done");			        			        					

		}
		else if(event.equals("getItemByHotelId")) {
			try {
				int hotel_id=Integer.parseInt(request.getParameter("hotel_id"));
				ItemDao id=new ItemDao();
				List<Item> item = id.sortItemByHotelId(hotel_id);
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(item);		    
				out.print(JSONObject);
			}catch(Exception e) {e.printStackTrace();}
		}
		else if(event.equals("sortByCategory"))
		{
			int category_id = Integer.parseInt(request.getParameter("category_id"));
			ItemDao id=new ItemDao();
			List<Item> items = id.getItemsByCategory(category_id);
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(items);
			//   System.out.print(JSONObject);
			out.print(JSONObject);
		}
		else if(event.equals("sortByCategoryAndHotel"))
		{
			int category_id = Integer.parseInt(request.getParameter("category_id"));
			int hotel_id = Integer.parseInt(request.getParameter("hotel_id"));
			ItemDao id=new ItemDao();
			List<Item> items = id.getItemsByCategoryAndHotel(category_id,hotel_id);
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(items);
			//   System.out.print(JSONObject);
			out.print(JSONObject);
		}
		else if(event.equals("fatchItemByItem_IdandHotel_id")) {
			try {
				int item_id=Integer.parseInt(request.getParameter("item_id"));
				int hotel_id=Integer.parseInt(request.getParameter("hotel_id"));				
				ItemDao itemdao=new ItemDao();
				List<Item> item = itemdao.sortItemByIdandHotelid(item_id,hotel_id);
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(item);		    
				out.print(JSONObject);
			}catch(Exception e) {e.printStackTrace();}
		}
		else if(event.equals("FatchItemByItemId")) {
			try {
				int item_id=Integer.parseInt(request.getParameter("item_id"));

				ItemDao itemdao=new ItemDao();
				List<Item> item = itemdao.sortItemByItemId(item_id);
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(item);		    
				out.print(JSONObject);
			}catch(Exception e) {e.printStackTrace();}
		}
	}
	private boolean validateImage1(String imageName1){
		String fileExt1 = imageName1.substring(imageName1.length()-3);
		if("jpg".equals(fileExt1) || "png".equals(fileExt1) || "gif".equals(fileExt1))
		{ 
			return true;
		}
		return false;
	}

}
