package sist.com.model;

public class DeliMenu {
	private String ownermenucate;
	private int ownerno;
	private String menukind;
	private String menuname;
	private String menuprice;
	private String menuexplain;
	private String menuimg;
	public String getOwnermenucate() {
		return ownermenucate;
	}
	public void setOwnermenucate(String ownermenucate) {
		this.ownermenucate = ownermenucate;
	}
	public int getOwnerno() {
		return ownerno;
	}
	public void setOwnerno(int ownerno) {
		this.ownerno = ownerno;
	}
	public String getMenukind() {
		return menukind;
	}
	public void setMenukind(String menukind) {
		this.menukind = menukind;
	}
	public String getMenuname() {
		return menuname;
	}
	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}
	public String getMenuprice() {
		return menuprice;
	}
	public void setMenuprice(String menuprice) {
		this.menuprice = menuprice;
	}
	public String getMenuexplain() {
		return menuexplain;
	}
	public void setMenuexplain(String menuexplain) {
		this.menuexplain = menuexplain;
	}
	public String getMenuimg() {
		return menuimg;
	}
	public void setMenuimg(String menuimg) {
		this.menuimg = menuimg;
	}
	
	@Override
	public String toString() {
		return "DeliMenu [ownermenucate=" + ownermenucate + ", ownerno=" + ownerno + ", menukind=" + menukind
				+ ", menuname=" + menuname + ", menuprice=" + menuprice + ", menuexplain=" + menuexplain + ", menuimg="
				+ menuimg + "]";
	}
	
	
}
