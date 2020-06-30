package sist.com.model;

public class couponlist {
	private String storename;
	private int couponno;
	private int ownerno ;
	private String couponname;
	private int sale;
	public String getStorename() {
		return storename;
	}
	public void setStorename(String storename) {
		this.storename = storename;
	}
	public int getCouponno() {
		return couponno;
	}
	public void setCouponno(int couponno) {
		this.couponno = couponno;
	}
	public int getOwnerno() {
		return ownerno;
	}
	public void setOwnerno(int ownerno) {
		this.ownerno = ownerno;
	}
	public String getCouponname() {
		return couponname;
	}
	public void setCouponname(String couponname) {
		this.couponname = couponname;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	@Override
	public String toString() {
		return "couponlist [storename=" + storename + ", couponno=" + couponno + ", ownerno=" + ownerno
				+ ", couponname=" + couponname + ", sale=" + sale + "]";
	}

	
	
}
