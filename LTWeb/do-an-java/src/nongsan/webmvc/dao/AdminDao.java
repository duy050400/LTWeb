package nongsan.webmvc.dao; 
 
import java.util.List;

import nongsan.webmvc.model.Admin;
import nongsan.webmvc.model.User; 
 
public interface AdminDao { 
	void edit(User user);
	
	void delete(String id); 
 
	User get(int id); 
 
	List<User> getAll(); 
	
} 
