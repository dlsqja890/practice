package sist.com.model;

public class zzimbean {
private String storeno ;
private String userid ;
private int userno ;
@Override
public String toString() {
	return "zzimbean [storeno=" + storeno + ", userid=" + userid + ", userno=" + userno + "]";
}
public String getStoreno() {
	return storeno;
}
public void setStoreno(String storeno) {
	this.storeno = storeno;
}
public String getUserid() {
	return userid;
}
public void setUserid(String userid) {
	this.userid = userid;
}
public int getUserno() {
	return userno;
}
public void setUserno(int userno) {
	this.userno = userno;
}


}
