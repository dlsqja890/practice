package sist.com.model;

public class mycouponlistbean {
	private int couponno;
	private int ownerno;
	private String couponname; 
	private String startdate; 
	private String enddate;
	private int  userno;
	private String usecoupon;
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
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public int getUserno() {
		return userno;
	}
	public void setUserno(int userno) {
		this.userno = userno;
	}
	public String getUsecoupon() {
		return usecoupon;
	}
	public void setUsecoupon(String usecoupon) {
		this.usecoupon = usecoupon;
	}
	@Override
	public String toString() {
		return "mycouponlistbean [couponno=" + couponno + ", ownerno=" + ownerno + ", couponname=" + couponname
				+ ", startdate=" + startdate + ", enddate=" + enddate + ", userno=" + userno + ", usecoupon="
				+ usecoupon + "]";
	} 
	
	
}
