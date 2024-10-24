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

import Bean.Hotel;
import Bean.User;
import Dao.AdminDao;
import Dao.HotelDao;
import Util.DbConnection;

@WebServlet("/hotelServlet")
@MultipartConfig(maxFileSize = 1024 * 1024 * 2)
public class HotelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HotelServlet() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html:charset=UTF-8");
		PrintWriter out=response.getWriter();
		String event=request.getParameter("event");
		if(event.equals("addHotel")) {
			String hotel_name=request.getParameter("hname");
			String hotel_description=request.getParameter("hdesc");
			String hotel_address=request.getParameter("haddress");
			int city_id=Integer.parseInt(request.getParameter("city"));
			Part p1=request.getPart("image");
			String Path=DbConnection.Path2();

			String appPath =Path+"/hotelImg";
			String imagePath = appPath + "";
			File fileDir = new File(imagePath);
			if (!fileDir.exists()) 
				fileDir.mkdirs();
			//Get Image Name
			String imageName1 = p1.getSubmittedFileName();
			String fileExt1 = imageName1.substring(imageName1.length()-3);
			String imgname1=new Date().getTime() +"1"+"."+fileExt1;

			String finalImgPath1="hotelImg" + "/"+ imgname1;

			if(validateImage1(imageName1)){
				try{
					p1.write(imagePath + "/" + imgname1);
				}catch (Exception ex) { }
			}else{ out.print("df");  }
			Hotel hotel=new Hotel();
			hotel.setCity_id(city_id);
			hotel.setHotel_address(hotel_address);
			hotel.setHotel_description(hotel_description);
			hotel.setHotel_image(imgname1);
			hotel.setHotel_name(hotel_name);
			HotelDao hd=new  HotelDao();
			int x=hd.saveHotel(hotel);
			out.print("done");			        			        					
		}
		else if(event.equals("getHotel")) {
			try {
				HotelDao hd=new  HotelDao();
				List<Hotel> admin = hd.getHotels();
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(admin);			    
				out.print(JSONObject);				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(event.equals("hotel_delete")){
			int hotel_id=Integer.parseInt(request.getParameter("hotelId"));
			HotelDao hd=new  HotelDao();
			String status=hd.deleteHotel(hotel_id)==1?"done":"";
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(status);		    
			out.print(JSONObject);			
		}
		else if(event.equals("fatchHotelById")) {
			try {
				int hotel_id=Integer.parseInt(request.getParameter("hotelId"));
				HotelDao hd=new  HotelDao();
				List<Hotel> hotel = hd.sortHotelById(hotel_id);
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(hotel);		    
				out.print(JSONObject);
			}catch(Exception e) {e.printStackTrace();}
		}
		else if(event.equals("updateHotel")) {
			int hotel_id=Integer.parseInt(request.getParameter("hotelid"));
			String hotel_name=request.getParameter("hname");
			String hotel_description=request.getParameter("hdesc");
			String hotel_address=request.getParameter("haddress");
			int city_id=Integer.parseInt(request.getParameter("city"));
			Part p1=request.getPart("image");
			String Path=DbConnection.Path2();

			String appPath =Path+"/hotelImg";
			String imagePath = appPath + "";
			File fileDir = new File(imagePath);
			if (!fileDir.exists()) 
				fileDir.mkdirs();
			//Get Image Name
			String imageName1 = p1.getSubmittedFileName();
			String fileExt1 = imageName1.substring(imageName1.length()-3);
			String imgname1=new Date().getTime() +"1"+"."+fileExt1;

			String finalImgPath1="hotelImg" + "/"+ imgname1;

			if(validateImage1(imageName1)){
				try{
					p1.write(imagePath + "/" + imgname1);
				}catch (Exception ex) { }
			}else{ out.print("<script> alert('Invalid Image Format')</script>");  }
			
			Hotel hotel=new Hotel();
			hotel.setCity_id(city_id);
			hotel.setHotel_address(hotel_address);
			hotel.setHotel_description(hotel_description);
			hotel.setHotel_image(imgname1);
			hotel.setHotel_name(hotel_name);
			hotel.setHotel_id(hotel_id);
			HotelDao hd=new  HotelDao();
			hd.updateHotel(hotel);
			out.print("done");			        			        					
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
