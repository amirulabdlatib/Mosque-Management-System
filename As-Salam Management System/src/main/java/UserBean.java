public class UserBean {
	private int userid;
	private int mosqueid;
	private String username; 
	private String password; 
	public boolean valid;
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getMosqueid() {
		return mosqueid;
	}
	public void setMosqueid(int mosqueid) {
		this.mosqueid = mosqueid;
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
	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
}