package nongsan.webmvc.model;

public class User{
	private int id;
	private String name;
	private String email;
	private String phone;
	private String username;
	private String password;
	private String created;
	private int isAdmin;
	private String publickey;

	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	
	public User(int id, String name, String email, String phone, String username, String password, String created,
			int isAdmin, String publickey) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.username = username;
		this.password = password;
		this.created = created;
		this.isAdmin = isAdmin;
		this.publickey = publickey;
	}


	public User(String username, String password, String email, String phone, String name, String created, int isAdmin)
	{
		super();
		this.username = username;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.name = name;
		this.created = created;
		this.isAdmin = isAdmin;
	}
	public User()
	{
		super();
	}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCreated() {
		return created;
	}

	public void setCreated(String created) {
		this.created = created;
	}

	public int getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}


	public String getPublickey() {
		return publickey;
	}


	public void setPublickey(String publickey) {
		this.publickey = publickey;
	}


	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", phone=" + phone + ", username=" + username
				+ ", password=" + password + ", created=" + created + ", isAdmin=" + isAdmin + ", publickey="
				+ publickey + "]";
	}

	
	
	
	
	
}
