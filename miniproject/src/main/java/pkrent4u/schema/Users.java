package pkrent4u.schema;

public class Users {
	private String username;
	private String password;
	private String Create_Time;
	private String Update_Time;
	public void setUsername(String username) {
		this.username = username;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setCreate_Time(String Create_Time) {
		this.Create_Time = Create_Time;
	}
	public void setUpdate_Time(String Update_Time) {
		this.Update_Time = Update_Time;
	}
	public String getUsername() {
		return this.username;
	}
	public String getCreate_Time() {
		return this.Create_Time;
	}
	public String getUpdate_Time() {
		return this.Update_Time;
	}
	public String getPassword() {
		return this.password;
	}
}
