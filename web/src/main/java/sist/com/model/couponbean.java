package sist.com.model;

public class couponbean {

	
	private int couponno ;
	private int   ownerno ;
	private String   couponname ;
	private String   startdate ;
	private String   enddate ;
	   private int   sale ;
	   private int   couponcnt ;
	   private int   downcoupon ;
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
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public int getCouponcnt() {
		return couponcnt;
	}
	public void setCouponcnt(int couponcnt) {
		this.couponcnt = couponcnt;
	}
	public int getDowncoupon() {
		return downcoupon;
	}
	public void setDowncoupon(int downcoupon) {
		this.downcoupon = downcoupon;
	}
	@Override
	public String toString() {
		return "couponbean [couponno=" + couponno + ", ownerno=" + ownerno + ", couponname=" + couponname
				+ ", startdate=" + startdate + ", enddate=" + enddate + ", sale=" + sale + ", couponcnt=" + couponcnt
				+ ", downcoupon=" + downcoupon + "]";
	}
	   
}
