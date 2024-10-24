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
import Bean.User;
import Dao.AdminDao;
import Util.DbConnection;

@WebServlet("/adminServlet")
@MultipartConfig(maxFileSize = 1024 * 1024 * 2)
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminServlet() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html:charset=UTF-8");
		PrintWriter out=response.getWriter();
		String event=request.getParameter("event");
		if(event.equals("addAdmin")) {
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String phno=request.getParameter("cno");
			String address=request.getParameter("address");
			Part p1=request.getPart("image");
			String Path=DbConnection.Path2();

			String appPath =Path+"/adminImg";
			String imagePath = appPath + "";
			File fileDir = new File(imagePath);
			if (!fileDir.exists()) 
				fileDir.mkdirs();
			//Get Image Name
			String imageName1 = p1.getSubmittedFileName();
			String fileExt1 = imageName1.substring(imageName1.length()-3);
			String imgname1=new Date().getTime() +"1"+"."+fileExt1;

			String finalImgPath1="adminImg" + "/"+ imgname1;

			if(validateImage1(imageName1)){
				try{
					p1.write(imagePath + "/" + imgname1);
				}catch (Exception ex) { }
			}else{ out.print("<script> alert('Invalid Image Format')</script>");  }
			User user=new User();
			user.setAddress(address);
			user.setCno(phno);
			user.setEmail(email);
			user.setImage(imgname1);
			user.setName(name);
			user.setPassword(password);			      
			AdminDao ad=new  AdminDao();
			int x=ad.saveAdmin(user);
			out.print("done");			        			        					
		}
		else if(event.equals("getAdmins")) {
			try {
				System.out.println(event);
				AdminDao ad=new  AdminDao();
				List<User> admin = ad.getAdmins();
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(admin);			    
				out.print(JSONObject);				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(event.equals("admin_delete")){
			int id=Integer.parseInt(request.getParameter("adminId"));
			AdminDao ad=new  AdminDao();
			String status=ad.deleteAdmin(id)==1?"done":"";
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(status);		    
			out.print(JSONObject);			
		}
		else if(event.equals("fatchAdminById")) {
			try {
				int id=Integer.parseInt(request.getParameter("adminId"));
				AdminDao ad=new  AdminDao();
				List<User> user = ad.sortAdminById(id);
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(user);		    
				out.print(JSONObject);
			}catch(Exception e) {e.printStackTrace();}
		}
		else if(event.equals("updateAdmin")) {
			try {
				int id=Integer.parseInt(request.getParameter("id"));
				String name=request.getParameter("name");
				String email=request.getParameter("email");
				String phno=request.getParameter("cno");
				String address=request.getParameter("address");
				Part p1=request.getPart("image");
				String Path=DbConnection.Path2();

				String appPath =Path+"/adminImg";
				String imagePath = appPath + "";
				File fileDir = new File(imagePath);
				if (!fileDir.exists()) 
					fileDir.mkdirs();
				//Get Image Name
				String imageName1 = p1.getSubmittedFileName();
				String fileExt1 = imageName1.substring(imageName1.length()-3);
				String imgname1=new Date().getTime() +"1"+"."+fileExt1;

				String finalImgPath1="adminImg" + "/"+ imgname1;

				if(validateImage1(imageName1)){
					try{
						p1.write(imagePath + "/" + imgname1);
					}catch (Exception ex) { }
				}else{ out.print("<script> alert('Invalid Image Format')</script>");  }
				User user=new User();
				user.setAddress(address);
				user.setCno(phno);
				user.setEmail(email);
				user.setImage(imgname1);
				user.setName(name);
				user.setId(id)	;	      
				AdminDao ad=new  AdminDao();
				ad.updateAdmin(user);
				out.print("done");
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
