package nongsan.webmvc.controller.admin;


import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import nongsan.webmvc.model.Catalog;
import nongsan.webmvc.model.Product;
import nongsan.webmvc.service.CategoryService;
import nongsan.webmvc.service.ProductService;
import nongsan.webmvc.service.impl.CategoryServicesImpl;
import nongsan.webmvc.service.impl.ProductServiceImpl;

@MultipartConfig(fileSizeThreshold = 1024*1024*5, //5MB
		maxFileSize = 1024*1024*10, //10MB
		maxRequestSize = 1024*1024*30,
		location = "C:\\Users\\Di\\Desktop\\LTWeb\\do-an-java\\WebContent\\view\\upload") //30MB
public class ProductAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductService productService = new ProductServiceImpl();


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CategoryService cateService = new CategoryServicesImpl();
		List<Catalog> cateList = cateService.getAll();
		req.setAttribute("catelist", cateList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/admin/addproduct.jsp");
		dispatcher.forward(req, resp);
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			req.setCharacterEncoding("utf-8");
			resp.setContentType("text/html;charset=UTF-8");
			String product_cate = req.getParameter("product-cate");
			String product_name = req.getParameter("product-name");
			String product_price = req.getParameter("product-price");
			String product_status = req.getParameter("product-status");
			String product_desc = req.getParameter("product-desc");
			String product_content = req.getParameter("product-content");
			String product_discount = req.getParameter("product-discount");
			String product_day = req.getParameter("product-day");
			
			Part part = req.getPart("image");
			//String realPath = req.getServletContext().getRealPath("/upload");
			String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
//			if(!Files.exists(Paths.get(realPath))) {
//				Files.createDirectory(Paths.get(realPath));
//			}
			part.write(filename);

			Product product = new Product();
			product.setCatalog_id(product_cate);
			product.setName(product_name);
			product.setPrice(product_price);
			product.setStatus(product_status);
			product.setDescription(product_desc);
			product.setContent(product_content);
			product.setDiscount(product_discount);
			product.setImage_link(filename);
			product.setCreated(product_day);
			productService.insert(product);
			resp.sendRedirect(req.getContextPath() + "/admin/product/list");

	}
}
