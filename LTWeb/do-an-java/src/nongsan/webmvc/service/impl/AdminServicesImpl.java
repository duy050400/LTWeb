package nongsan.webmvc.service.impl; 
 
import java.util.List;

import nongsan.webmvc.dao.AdminDao;
import nongsan.webmvc.dao.impl.AdminDaoImpl;
import nongsan.webmvc.model.Admin;
import nongsan.webmvc.model.User;
import nongsan.webmvc.service.AdminService; 
 
public class AdminServicesImpl implements AdminService { 
	AdminDao adminDao = new AdminDaoImpl(); 
 
	
 
	@Override
	public void edit(User newUser) {
		User oldUSer = adminDao.get(newUser.getId());
		oldUSer.setName(newUser.getName());
		oldUSer.setEmail(newUser.getEmail());
		oldUSer.setPhone(newUser.getPhone());
		oldUSer.setUsername(newUser.getUsername());
		oldUSer.setPassword(newUser.getPassword());
		oldUSer.setCreated(newUser.getCreated());
		oldUSer.setIsAdmin(newUser.getIsAdmin());
		adminDao.edit(oldUSer);

	}
 
	@Override 
	public void delete(String id) { 
		adminDao.delete(id); 
 
	} 
 
	
	@Override 
	public List<User> getAll() {
		return adminDao.getAll();
	}

 
	@Override
	public User get(int id) {
		return adminDao.get(id);
	}
} 
 
