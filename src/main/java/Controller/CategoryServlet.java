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
import Bean.Category;
import Dao.CategoryDao;


@WebServlet("/categoryServlet")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;  
	public CategoryServlet() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html:charset=UTF-8");
		PrintWriter out=response.getWriter();
		String event=request.getParameter("event");
		if(event.equals("addCategory")) {
			String category_name =request.getParameter("categoryname");
			CategoryDao categoryDao=new CategoryDao();
			int status=categoryDao.saveCategory(category_name);
			if(status>0) {
				out.print("done");
			}else {
				out.print("failed");
			}
		}
		else if(event.equals("getAllCategory")) {
			try {
				CategoryDao categoryDao=new CategoryDao();
				List<Category> category = categoryDao.getCategory();
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(category);			    
				out.print(JSONObject);				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(event.equals("category_delete")){
			int category_id=Integer.parseInt(request.getParameter("categoryId"));
			CategoryDao categoryDao=new CategoryDao();
			String status=categoryDao.deleteCategory(category_id)==1?"done":"";
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(status);		    
			out.print(JSONObject);			
		}
		else if(event.equals("fatchCategoryById")) {
			try {
				int category_id=Integer.parseInt(request.getParameter("categoryId"));
				CategoryDao categoryDao=new CategoryDao();
				List<Category> category = categoryDao.sortCategoryById(category_id);
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(category);		    
				out.print(JSONObject);
			}catch(Exception e) {e.printStackTrace();}
		}
		else if(event.equals("updateCategory")) {
			try {
				int category_id=Integer.parseInt(request.getParameter("categoryid"));
				String category_name=request.getParameter("categoryname");
				CategoryDao categoryDao=new CategoryDao();
				categoryDao.updateCategory(category_name,category_id);
				out.print("done");
			}catch(Exception e) {e.printStackTrace();}
		}
	}

}
