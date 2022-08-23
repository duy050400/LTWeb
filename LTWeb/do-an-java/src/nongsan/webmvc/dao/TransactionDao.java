package nongsan.webmvc.dao;
import java.util.List;

import nongsan.webmvc.model.Transactions;


public interface TransactionDao {
	void insert(Transactions transaction); 
	 
	void edit(Transactions admin); 
	
	void delete(String id); 
 
	Transactions get(int id); 
	 
	List<Transactions> getByUsername(String username); 
 
	List<Transactions> getAll(); 
	
	
}
