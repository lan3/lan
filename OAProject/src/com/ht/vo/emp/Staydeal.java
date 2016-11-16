package com.ht.vo.emp;

/**
 * Staydeal entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Staydeal implements java.io.Serializable {

	// ´ı°ìÊÂÎï

	private Integer stayid;
	private String staything;

	// Constructors

	/** default constructor */
	public Staydeal() {
	}

	/** full constructor */
	public Staydeal(String staything) {
		this.staything = staything;
	}

	// Property accessors

	public Integer getStayid() {
		return this.stayid;
	}

	public void setStayid(Integer stayid) {
		this.stayid = stayid;
	}

	public String getStaything() {
		return this.staything;
	}

	public void setStaything(String staything) {
		this.staything = staything;
	}

}