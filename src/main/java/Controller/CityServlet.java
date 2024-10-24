package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import Bean.City;
import Dao.CityDao;


@WebServlet("/cityServlet")
public class CityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CityServlet() {

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html:charset=UTF-8");
		PrintWriter out=response.getWriter();
		String event=request.getParameter("event");
		if(event.equals("addCity")) {
			String cityname=request.getParameter("cityname");
			CityDao citydao=new CityDao();
			int status=citydao.saveCity(cityname);
			if(status>0) {
				out.print("done");
			}else {
				out.print("failed");
			}
		}
		else if(event.equals("getAllCity")) {
			try {
				CityDao cityDao=new  CityDao();
				List<City> city = cityDao.getCity();
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(city);			    
				out.print(JSONObject);				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(event.equals("city_delete")){
			int city_id=Integer.parseInt(request.getParameter("cityId"));
			CityDao cityDao=new  CityDao();
			String status=cityDao.deleteCity(city_id)==1?"done":"";
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(status);		    
			out.print(JSONObject);			
		}
		else if(event.equals("fatchCityById")) {
			try {
				int city_id=Integer.parseInt(request.getParameter("cityId"));
				CityDao cityDao=new  CityDao();
				List<City> city = cityDao.sortCityById(city_id);
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(city);		    
				out.print(JSONObject);
			}catch(Exception e) {e.printStackTrace();}
		}
		else if(event.equals("updateCity")) {
			try {
				int city_id=Integer.parseInt(request.getParameter("cityid"));
				String city_name=request.getParameter("cityname");
				CityDao citydao=new CityDao();
				citydao.updateCity(city_name,city_id);
				out.print("done");
			}catch(Exception e) {e.printStackTrace();}
		}
	}

}
