package nongsan.webmvc.controller;

import java.io.IOException;

import java.nio.file.Paths;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import nongsan.webmvc.model.User;
import nongsan.webmvc.service.UserService;
import nongsan.webmvc.service.impl.UserServicesImpl;

@MultipartConfig(fileSizeThreshold = 1024*1024*20, //20MB
maxFileSize = 1024*1024*50, //50MB
maxRequestSize = 1024*1024*100,//100MB
location = "C:\\Users\\Di\\Desktop\\LTWEB\\do-an-java\\WebContent\\view\\upload\\publickey") 
public class ProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserService userService = new UserServicesImpl();
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =  request.getSession();
		User userLogin = (User)session.getAttribute("account");
		int user_id = userLogin.getId();
		User user=userService.get(user_id);
		request.setAttribute("user", user);
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/view/client/profile.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		String user_name = request.getParameter("user-name");
		String user_email = request.getParameter("user-email");
		String user_phone = request.getParameter("user-phone");
		String user_password = request.getParameter("user-password");
		
		HttpSession session =  request.getSession();
		User userLogin = (User)session.getAttribute("account");
		int user_id = userLogin.getId();
		User user=userService.get(user_id);
		
		Part part = request.getPart("publickey");
		String namePublickey = userLogin.getUsername() + "-" + Paths.get(part.getSubmittedFileName()).getFileName().toString();
		part.write(namePublickey);
		
		
			
		
		user.setName(user_name);
		user.setEmail(user_email);
		user.setPhone(user_phone);
		user.setPassword(user_password);
		user.setPublickey(namePublickey);
		userService.edit(user);
		response.sendRedirect(request.getContextPath() + "/view/client/profile");
	}

}
