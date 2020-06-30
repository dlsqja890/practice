package sist.com.model;

import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

public class mingutest {

	private String id ;
	private Double life;
	private Double birthlate;
	private String area;
	private int population ;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Double getLife() {
		return life;
	}
	public void setLife(Double life) {
		this.life = life;
	}
	public Double getBirthlate() {
		return birthlate;
	}
	public void setBirthlate(Double birthlate) {
		this.birthlate = birthlate;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public int getPopulation() {
		return population;
	}
	public void setPopulation(int population) {
		this.population = population;
	}

	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.SIMPLE_STYLE) ;
		/*return "mingutest [id=" + id + ", life=" + life + ", birthlate=" + birthlate + ", area=" + area
				+ ", population=" + population + "]";*/
	}
	
/*	public String toStringSimple(){
		
		
		return ToStringBuilder.reflectionToString(this, ToStringStyle.SIMPLE_STYLE) ;
	}*/
	
	
	
	
	
}
