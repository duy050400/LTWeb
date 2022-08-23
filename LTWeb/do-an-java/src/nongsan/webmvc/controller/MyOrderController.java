package nongsan.webmvc.controller;

import java.io.IOException;
import java.security.PublicKey;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import nongsan.webmvc.dao.TransactionDao;
import nongsan.webmvc.dao.impl.TransactionDaoImpl;
import nongsan.webmvc.model.Transactions;
import nongsan.webmvc.model.User;
import nongsan.webmvc.service.TransactionService;
import nongsan.webmvc.service.impl.TransactionServicesImpl;

@MultipartConfig(fileSizeThreshold = 1024*1024*5, //5MB
maxFileSize = 1024*1024*10, //10MB
maxRequestSize = 1024*1024*30,
location = "C:\\Users\\Di\\Desktop\\LTWeb\\do-an-java\\WebContent\\view\\upload") //30MB
public class MyOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TransactionService transactionService = new TransactionServicesImpl(); 
	TransactionDao transactionDao = new TransactionDaoImpl();

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session =  request.getSession();
		User userLogin = (User)session.getAttribute("account");
		String username = userLogin.getUsername();
		List<Transactions> transactionList = transactionDao.getByUsername(username);
		request.setAttribute("orders", transactionList); 
		RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/view/client/my-order.jsp");
		dispatcher.forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session =  request.getSession();
		User userLogin = (User)session.getAttribute("account");
		
		String code = request.getParameter("code");
		
		String src = "C:\\Users\\Di\\Desktop\\LTWEB\\do-an-java\\WebContent\\view\\upload\\publickey\\" + userLogin.getPublickey();
		PublicKey publicKey = transactionService.readPublickey(src);
		
		
		
		String hashDecrypt = transactionService.decryption(publicKey, code);
		
		String id = request.getParameter("id");
	
		
		String hash = transactionService.get(Integer.parseInt(id)).getHash();
		
		
		session.setAttribute("hash", src);
		
		if(hash.equals(hashDecrypt)) {
			Transactions transactions = transactionService.get(Integer.parseInt(id));
			transactions.setStatus("ĐÃ XÁC NHẬN");
			transactionService.edit(transactions);
			request.setAttribute("mess","Thành công!");
			response.sendRedirect(request.getContextPath() + "/view/client/my-order");
		}else {
			request.setAttribute("mess","Chữ ký không hợp lệ. Vui lòng thử lại!");
			RequestDispatcher rd = request.getRequestDispatcher("/view/client/my-order.jsp");
	         rd.forward(request, response);
		}
		
		
	}

}
