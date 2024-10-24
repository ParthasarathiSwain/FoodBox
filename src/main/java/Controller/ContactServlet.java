package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.ContactUs;
import Dao.ContactDao;

@WebServlet("/contact")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ContactServlet() {

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html:charset=UTF-8");
		PrintWriter out=response.getWriter();
		String event=request.getParameter("event");
		System.out.println(event);
		if(event.equals("contactUs")) {
			String full_name =request.getParameter("fname");
			String email =request.getParameter("email");
			String phone =request.getParameter("phno");
			String message =request.getParameter("message");

			ContactUs cu=new ContactUs();
			cu.setEmail(email);
			cu.setFull_name(full_name);
			cu.setMessage(message);
			cu.setPhone(phone);

			ContactDao cd=new ContactDao();
			int status=cd.saveContact(cu);
			if(status>0) {
				out.print("done");
			}else {
				out.print("failed");
			}
		}
	}

}
