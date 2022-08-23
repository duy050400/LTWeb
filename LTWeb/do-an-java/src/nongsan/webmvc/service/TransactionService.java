package nongsan.webmvc.service;

import java.security.PrivateKey;
import java.security.PublicKey;
import java.util.List;

import nongsan.webmvc.model.Transactions;

public interface TransactionService {
	void insert(Transactions transaction);
	 
	void edit(Transactions transaction); 

	void delete(String id); 
 
	Transactions get(int id); 
	 
	List<Transactions> getByUsername(String username); 
 
	List<Transactions> getAll(); 
	
	String hash(String idTransactions);
	
	PublicKey readPublickey(String src);
	
	String decryption(PublicKey publicKey, String text);
	
	
//	String encryption(PrivateKey privateKey, String text );
}
