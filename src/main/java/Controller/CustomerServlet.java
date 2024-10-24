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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import Bean.User;
import Dao.CustomerDao;
import Util.DbConnection;

@WebServlet("/loginController")
@MultipartConfig(maxFileSize = 1024 * 1024 * 2)
public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CustomerServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html:charset=UTF-8");
		PrintWriter out=response.getWriter();
		String event=request.getParameter("event");

		if(event.equals("customerRegistration")) {
			String name=request.getParameter("name");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String phno=request.getParameter("cno");
			String address=request.getParameter("address");
			Part p1=request.getPart("image");
			String Path=DbConnection.Path();			
			String appPath =Path+"/custImg";
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
			CustomerDao cd=new CustomerDao();
			int x=cd.addCustomer(user);
			if(x>0) {
				out.print("done");
			}else {
				out.println("Failed");
			}			        					
		}
		else if(event.equals("loginUserAndAdmin")) {
			int status=0;
			String email=request.getParameter("username");
			String password=request.getParameter("password");
			CustomerDao cd= new CustomerDao();
			User user=cd.getIdAndRoleName(email, password);
			int 	id=user.getId();
			int role=user.getRole();
			String name=user.getName();
			String image=user.getImage();			
			HttpSession session = request.getSession(true);
			if(role==2) { 
				session.setAttribute("email", email);
				session.setAttribute("name", name);
				session.setAttribute("id", id);
				session.setAttribute("image", image);
				status=1;
			}
			else if(role==3){
				session.setAttribute("email", email);
				session.setAttribute("name", name);
				session.setAttribute("id", id);
				session.setAttribute("image", image);
				status=2;
			}
			else {
				status=3;
			}
			out.print(status);
		}
		else if(event.equals("getCustomers")) {
			try {
				CustomerDao cd=new CustomerDao();
				List<User> customer = cd.viewCustomers();
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(customer);
				System.out.print(JSONObject);
				out.print(JSONObject);				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		else if(event.equals("customer_delete")){
			int id=Integer.parseInt(request.getParameter("custId"));
			String status=CustomerDao.deleteCustomer(id)==1?"done":"";
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(status);
			System.out.print(JSONObject);
			out.print(JSONObject);

		}
		else if(event.equals("fatchCustomerById")) {
			try {
				int id=Integer.parseInt(request.getParameter("custId"));
				CustomerDao cd=new CustomerDao();
				List<User> user = cd.sortCustomerById(id);
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(user);		    
				out.print(JSONObject);
			}catch(Exception e) {e.printStackTrace();}
		}
		else if(event.equals("updateCustomer")) {
			try {
				int id=Integer.parseInt(request.getParameter("id"));
				String name=request.getParameter("name");
				String email=request.getParameter("email");
				String phno=request.getParameter("cno");
				String address=request.getParameter("address");
				Part p1=request.getPart("image");
				String Path=DbConnection.Path();

				String appPath =Path+"/custImg";
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
				CustomerDao cd=new CustomerDao();
				cd.updateCustomer(user);
				response.sendRedirect("admin/viewCustomer.jsp");
			}catch(Exception e) {e.printStackTrace();}
		}
		else if(event.equals("getCust")) {
			HttpSession session = request.getSession(true);
			String id= session.getAttribute("id").toString();
			int id2=Integer.parseInt(id);
			try {

				CustomerDao cd=new CustomerDao();
				List<User> user = cd.sortCustomerById(id2);
				GsonBuilder gsonBuilder = new GsonBuilder();
				Gson  gson = gsonBuilder.create();
				String JSONObject = gson.toJson(user);		    
				out.print(JSONObject);
			}catch(Exception e) {e.printStackTrace();}
		}
		else if(event.equals("changePassword")){
			String oldPass=request.getParameter("oldPass");
			String newPass=request.getParameter("newPass");
			String confirm=request.getParameter("confirm");


			HttpSession session = request.getSession(true);
			String id= session.getAttribute("id").toString();
			int id2=Integer.parseInt(id);


			CustomerDao cd=new CustomerDao();
			String password=cd.fatchPassWord(id2);
			String status="";
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			if(oldPass!=newPass) {
				if(newPass.trim().equals(confirm.trim())) {
					if(oldPass.trim().equals(password.trim())) {
						status=cd.updatePassword(confirm,id2)==1?"done":"";
						String JSONObject = gson.toJson(status);
						out.print(JSONObject);
					}else {
						status="error3";
						String JSONObject = gson.toJson(status);
						out.print(JSONObject);
					}
				}else {
					status="error2";
					String JSONObject = gson.toJson(status);
					out.print(JSONObject);
				}
			}else {
				status="error1";
				String JSONObject = gson.toJson(status);
				out.print(JSONObject);
			}
		}else if(event.equals("Edituser")){
			HttpSession session = request.getSession(true);
			String id= session.getAttribute("id").toString();
			int id2=Integer.parseInt(id);
			String address=request.getParameter("address");
			String cno=request.getParameter("Phone");
			String email=request.getParameter("email");
			String name=request.getParameter("FullName");
			User user=new User();
			user.setAddress(address);
			user.setCno(cno);
			user.setEmail(email);
			user.setId(id2);
			user.setName(name);
			CustomerDao cd=new CustomerDao();
			String status= cd.updateCustomer2(user)==1?"done":"";
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(status);
			out.print(JSONObject);
			session.setAttribute("name", name);

		}else if(event.equals("CountCustomer")){
			CustomerDao cd=new CustomerDao();
			int count=cd.countCustomer();			
			GsonBuilder gsonBuilder = new GsonBuilder();
			Gson  gson = gsonBuilder.create();
			String JSONObject = gson.toJson(count);
			out.print(JSONObject);
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
