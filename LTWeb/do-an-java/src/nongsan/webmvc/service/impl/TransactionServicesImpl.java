package nongsan.webmvc.service.impl;

import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Base64;
import java.util.List;

import javax.crypto.Cipher;

import nongsan.webmvc.dao.TransactionDao;
import nongsan.webmvc.dao.impl.TransactionDaoImpl;
import nongsan.webmvc.model.Admin;
import nongsan.webmvc.model.Transactions;
import nongsan.webmvc.service.TransactionService;

public class TransactionServicesImpl implements TransactionService{
	TransactionDao transactionDao = new TransactionDaoImpl();
	 
	public void insert(Transactions transaction) { 
		transactionDao.insert(transaction); 
	} 
	
	
	@Override
	public void edit(Transactions transaction) {
		Transactions oldTransaction = transactionDao.get(transaction.getId());		
		oldTransaction.setUser_name(transaction.getUser_name());
		oldTransaction.setUser_mail(transaction.getUser_mail());
		oldTransaction.setUser_phone(transaction.getUser_phone());
		oldTransaction.setAddress(transaction.getAddress());
		oldTransaction.setMessage(transaction.getMessage());
		oldTransaction.setAmount(transaction.getAmount());
		oldTransaction.setPayment(transaction.getPayment());
		oldTransaction.setStatus(transaction.getStatus());
		oldTransaction.setHash(transaction.getHash());
		transactionDao.edit(oldTransaction);
	} 
	
	
	@Override 
	public void delete(String id) { 
		transactionDao.delete(id); 
 
	} 
 
	@Override 
	public Transactions get(int id) { 
		return transactionDao.get(id); 
	} 
 
	@Override
	public List<Transactions> getByUsername(String username) {
		return transactionDao.getByUsername(username);
	} 
		
	
 
	@Override 
	public List<Transactions> getAll() { 
		return transactionDao.getAll(); 
	}


	@Override
	public String hash(String idTransactions) {
		byte[] hash = null;
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-256");
			hash = md.digest(idTransactions.getBytes(StandardCharsets.UTF_8));
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		BigInteger number = new BigInteger(1, hash);
		 
        // Convert message digest into hex value
        StringBuilder hexString = new StringBuilder(number.toString(16));
 
        // Pad with leading zeros
        while (hexString.length() < 64)
        {
            hexString.insert(0, '0');
        }
 
        return hexString.toString();

	}	
 
	


	@Override
	public PublicKey readPublickey(String src) {
		PublicKey publicKey = null;
		 try {
	            String key64 = new String(Files.readAllBytes(Paths.get(src)));
	            byte[] keybytes = Base64.getDecoder().decode((key64.getBytes()));
	            X509EncodedKeySpec xeks = new X509EncodedKeySpec(keybytes);
	            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
	            publicKey = keyFactory.generatePublic(xeks);
	            return publicKey;
	        } catch (Exception exception) {

	        }
		return null;
	        
		
	}
	@Override
	public String decryption(PublicKey publicKey, String text) {
		try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(Cipher.DECRYPT_MODE, publicKey);
            byte[] cypherByte = Base64.getDecoder().decode(text.getBytes());
            byte[] plainText = cipher.doFinal(cypherByte);
            return new String(plainText, "UTF-8");

        } catch (Exception exception) {
            
            return null;
        }
	}
//	public static void main(String[] args) {
//		TransactionServicesImpl impl = new TransactionServicesImpl();
//		String text = "T59On+FwK0NqzJpgGc1kpidy8dm4FIfInd4fTSyh6hIWcz4twbmKA4G7Efi6yo6Dp4UmpmOrQSVdj7CE0QQwWGVE9gHbyVThirAKTN/dWs0TfCj8GHD+5JJLbDwTUa9bnPu4LWW0BYNkBQuUQgao2HJ82ShEThXz6lrwyJSU+7g=";
//		PublicKey key = impl.readPublickey("C:\\Users\\Di\\Desktop\\LTWEB\\do-an-java\\WebContent\\view\\upload\\publickey\\nhatduy-pubkey");
//		String decrypt =  impl.decryption(key, text);
//		System.out.println(decrypt);
//	}


	
}
