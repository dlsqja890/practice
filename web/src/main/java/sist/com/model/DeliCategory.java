package sist.com.model;

public class DeliCategory {

	
	private int OWNERNO;
	private String STORENAME;
	private String  STORESTART;
	private String  STOREEND;
	private String  STOREADDR;
	private String  STOREPHONE;
	private String  STOREIMG;
	public int getOWNERNO() {
		return OWNERNO;
	}
	public void setOWNERNO(int oWNERNO) {
		OWNERNO = oWNERNO;
	}
	public String getSTORENAME() {
		return STORENAME;
	}
	public void setSTORENAME(String sTORENAME) {
		STORENAME = sTORENAME;
	}
	public String getSTORESTART() {
		return STORESTART;
	}
	public void setSTORESTART(String sTORESTART) {
		STORESTART = sTORESTART;
	}
	public String getSTOREEND() {
		return STOREEND;
	}
	public void setSTOREEND(String sTOREEND) {
		STOREEND = sTOREEND;
	}
	public String getSTOREADDR() {
		return STOREADDR;
	}
	public void setSTOREADDR(String sTOREADDR) {
		STOREADDR = sTOREADDR;
	}
	public String getSTOREPHONE() {
		return STOREPHONE;
	}
	public void setSTOREPHONE(String sTOREPHONE) {
		STOREPHONE = sTOREPHONE;
	}
	public String getSTOREIMG() {
		return STOREIMG;
	}
	public void setSTOREIMG(String sTOREIMG) {
		STOREIMG = sTOREIMG;
	}
	@Override
	public String toString() {
		return "DeliCategory [OWNERNO=" + OWNERNO + ", STORENAME=" + STORENAME + ", STORESTART=" + STORESTART
				+ ", STOREEND=" + STOREEND + ", STOREADDR=" + STOREADDR + ", STOREPHONE=" + STOREPHONE + ", STOREIMG="
				+ STOREIMG + "]";
	}
	
	

}
