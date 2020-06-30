package sist.com.model;

public class couponbox {
	private int couponno;
	private int userno;
	private int ownerno;
	private String usecoupon;
	public int getCouponno() {
		return couponno;
	}
	public void setCouponno(int couponno) {
		this.couponno = couponno;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public int getOwnerno() {
		return ownerno;
	}
	public void setOwnerno(int ownerno) {
		this.ownerno = ownerno;
	}
	public String getUsecoupon() {
		return usecoupon;
	}
	public void setUsecoupon(String usecoupon) {
		this.usecoupon = usecoupon;
	}
	@Override
	public String toString() {
		return "couponbox [couponno=" + couponno + ", userno=" + userno + ", ownerno=" + ownerno + ", usecoupon="
				+ usecoupon + "]";
	}
	
	
}
