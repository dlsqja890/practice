package sist.com.model;

public class alltest {

private int rk ; 
private String todate;
private String writer;
private String title;
private String message;
private int hits;
private String password;
public int getRk() {
	return rk;
}
public void setRk(int rk) {
	this.rk = rk;
}
public String getTodate() {
	return todate;
}
public void setTodate(String todate) {
	this.todate = todate;
}
public String getWriter() {
	return writer;
}
public void setWriter(String writer) {
	this.writer = writer;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
public int getHits() {
	return hits;
}
public void setHits(int hits) {
	this.hits = hits;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "alltest [rk=" + rk + ", todate=" + todate + ", writer=" + writer + ", title=" + title + ", message="
			+ message + ", hits=" + hits + ", password=" + password + "]";
}










}
