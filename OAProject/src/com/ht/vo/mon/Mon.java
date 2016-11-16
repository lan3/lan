package com.ht.vo.mon;
// default package

/**
 * Mon entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Mon implements java.io.Serializable {

	// Fields

	private Integer monid;
	private Double moncount;
	private Integer monpro;
	private String sname;
	private String monremark;
	// Constructors

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getMonremark() {
		return monremark;
	}

	public void setMonremark(String monremark) {
		this.monremark = monremark;
	}

	/** default constructor */
	public Mon() {
	}

	/** full constructor */
	public Mon(Double moncount, Integer monpro,String sname,String monremark) {
		this.moncount = moncount;
		this.monpro = monpro;
		this.sname=sname;
		this.monremark=monremark;
	}

	// Property accessors

	public Integer getMonid() {
		return this.monid;
	}

	public void setMonid(Integer monid) {
		this.monid = monid;
	}

	public Double getMoncount() {
		return this.moncount;
	}

	public void setMoncount(Double moncount) {
		this.moncount = moncount;
	}
	public Integer getMonpro() {
		return this.monpro;
	}

	public void setMonpro(Integer monpro) {
		this.monpro = monpro;
	}

}