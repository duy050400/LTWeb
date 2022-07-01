package nongsan.webmvc.controller.admin; 
 
import java.io.IOException; 
 
import javax.servlet.RequestDispatcher; 
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
 
import java.util.List;

import nongsan.webmvc.dao.AdminDao;
import nongsan.webmvc.dao.impl.AdminDaoImpl;
import nongsan.webmvc.model.Admin; 
import nongsan.webmvc.model.Catalog;
import nongsan.webmvc.model.User;
import nongsan.webmvc.service.AdminService; 
import nongsan.webmvc.service.impl.AdminServicesImpl; 
 
/** 
 * Servlet implementation class CategoryListController 
 */ 

public class AdminListController extends HttpServlet { 
	/** 
	 *  
	 */ 
	private static final long serialVersionUID = 1L; 
	AdminService adminService = new AdminServicesImpl(); 
	AdminDao adminDao = new AdminDaoImpl();
 
	@Override 
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { 
		List<User> admins = adminDao.getAll();	
		req.setAttribute("adminList", admins);
		RequestDispatcher dispatcherUser  = req.getRequestDispatcher("/view/admin/admin.jsp");
		dispatcherUser.forward(req, resp);
	} 
}