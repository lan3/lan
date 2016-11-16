package com.ht.vo.mon;
// default package

/**
 * Pay entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Pay implements java.io.Serializable {

	// Fields

	private Integer payid;
	private Double paycount;
	private String paypro;
	private String payitem;
	private String sname;
	// Constructors

	/** default constructor */
	public Pay() {
	}

	/** full constructor */
	public Pay(Double paycount, String paypro) {
		this.paycount = paycount;
		this.paypro = paypro;
	}

	// Property accessors

	public Integer getPayid() {
		return this.payid;
	}

	public void setPayid(Integer payid) {
		this.payid = payid;
	}

	public Double getPaycount() {
		return this.paycount;
	}

	public void setPaycount(Double paycount) {
		this.paycount = paycount;
	}

	public String getPaypro() {
		return this.paypro;
	}

	public void setPaypro(String paypro) {
		this.paypro = paypro;
	}

	public String getPayitem() {
		return payitem;
	}

	public void setPayitem(String payitem) {
		this.payitem = payitem;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

}