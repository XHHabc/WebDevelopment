package model;

public class User {
	private	int Uid;
	private String Uname;
	private String Upasswd;
	private String Uaddress;
	private String Uphone;
	private String Usex;
	

	public User( int uid,String uname, String uaddress, String uphone, String usex) {
		super();
		Uid = uid;
		Uname = uname;
		Uaddress = uaddress;
		Uphone = uphone;
		Usex = usex;
	}
	
	public User() {
		super();
	}
	public User(int uid, String uname, String upasswd, String uaddress, String uphone, String usex) {
		super();
		Uid = uid;
		Uname = uname;
		Upasswd = upasswd;
		Uaddress = uaddress;
		Uphone = uphone;
		Usex = usex;
	}
	public int getUid() {
		return Uid;
	}
	public void setUid(int uid) {
		Uid = uid;
	}
	public String getUname() {
		return Uname;
	}
	public void setUname(String uname) {
		Uname = uname;
	}
	public String getUpasswd() {
		return Upasswd;
	}
	public void setUpasswd(String upasswd) {
		Upasswd = upasswd;
	}
	public String getUaddress() {
		return Uaddress;
	}
	public void setUaddress(String uaddress) {
		Uaddress = uaddress;
	}
	public String getUphone() {
		return Uphone;
	}
	public void setUphone(String uphone) {
		Uphone = uphone;
	}
	public String getUsex() {
		return Usex;
	}
	public void setUsex(String usex) {
		Usex = usex;
	}
	
	
	
	
}
