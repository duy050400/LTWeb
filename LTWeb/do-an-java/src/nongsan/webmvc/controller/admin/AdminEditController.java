package nongsan.webmvc.controller.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nongsan.webmvc.model.Admin;
import nongsan.webmvc.model.User;
import nongsan.webmvc.service.AdminService;
import nongsan.webmvc.service.impl.AdminServicesImpl;

public class AdminEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	AdminService adminService = new AdminServicesImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int user_id = Integer.parseInt(req.getParameter("user-id"));
		User user = adminService.get(user_id);
		req.setAttribute("user", user);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/editadmin.jsp");
		dispatcher.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=UTF-8");
		int user_id = Integer.parseInt(req.getParameter("user-id"));
		String user_name = req.getParameter("user-name");
		String user_email = req.getParameter("user-email");
		String user_phone = req.getParameter("user-phone");
		String user_userName = req.getParameter("user-userName");
		String user_password = req.getParameter("user-password");
		String user_created = req.getParameter("user-created");
		String is_admin = req.getParameter("is_admin");

		int is_Admin = 1;
		if (is_admin == null) {
			is_Admin = 0;
		}

		User admin = new User();
		admin.setName(user_name);
		admin.setEmail(user_email);
		admin.setPhone(user_phone);
		admin.setUsername(user_userName);
		admin.setPassword(user_password);
		admin.setCreated(user_created);
		admin.setIsAdmin(is_Admin);
		admin.setId(user_id);
		adminService.edit(admin);
		resp.sendRedirect(req.getContextPath() + "/admin/admin/list");

	}
}
