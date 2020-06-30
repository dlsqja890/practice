package sist.com.model;

public class MemberBean {
	private int userno;
	private String username;
	private String userid;
	private String userpw;
	private String usertel;
	private String usergender;
	private String userbirth;
	private boolean confirm;
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsertel() {
		return usertel;
	}
	public void setUsertel(String usertel) {
		this.usertel = usertel;
	}
	public String getUsergender() {
		return usergender;
	}
	public void setUsergender(String usergender) {
		this.usergender = usergender;
	}
	public String getUserbirth() {
		return userbirth;
	}
	public void setUserbirth(String userbirth) {
		this.userbirth = userbirth;
	}
	public boolean isConfirm() {
		return confirm;
	}
	public void setConfirm(boolean confirm) {
		this.confirm = confirm;
	}
	@Override
	public String toString() {
		return "MemberBean [userno=" + userno + ", username=" + username + ", userid=" + userid + ", userpw=" + userpw
				+ ", usertel=" + usertel + ", usergender=" + usergender + ", userbirth=" + userbirth + ", confirm="
				+ confirm + "]";
	}
	
	
}
