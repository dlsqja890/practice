package sist.com.model;

import java.util.HashMap;

public class pagetest {
private int showpage=5;
private int alltestcount;
private int pagespan;
private HashMap<String,Integer> currentpage;
private int currentblock=5 ;
public int getAlltestcount() {
	return alltestcount;
}
public void setAlltestcount(int alltestcount) {
	this.alltestcount = alltestcount;
}
public int getPagespan() {
	return pagespan;
}
public void setPagespan(int pagespan) {
	this.pagespan = pagespan;
}
public HashMap<String, Integer> getCurrentpage() {
	return currentpage;
}
public void setCurrentpage(HashMap<String, Integer> currentpage) {
	this.currentpage = currentpage;
}
public int getShowpage() {
	return showpage;
}

public int getCurrentblock() {
	return currentblock;
}
public void setCurrentblock(int currentblock) {
	this.currentblock = currentblock;
}
public void setShowpage(int showpage) {
	this.showpage = showpage;
}
@Override
public String toString() {
	return "pagetest [showpage=" + showpage + ", alltestcount=" + alltestcount + ", pagespan=" + pagespan
			+ ", currentpage=" + currentpage + ", currentblock=" + currentblock + "]";
}



}
