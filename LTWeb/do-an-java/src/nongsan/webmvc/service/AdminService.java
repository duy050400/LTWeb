package nongsan.webmvc.service; 
 
import nongsan.webmvc.model.Admin;
import nongsan.webmvc.model.User;

import java.util.List; 
public interface AdminService { 
void edit(User user);
	
	void delete(String id); 
 
	User get(int id); 
 
	List<User> getAll(); 
	
 
} 
