package com.ht.vo.emp;

import java.util.Date;

/**
 * Report entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Report implements java.io.Serializable {

	// Fields

	private Integer rid;
	private Integer eid;
	private Date rdate;
	private String rsummary;

	// Constructors

	/** default constructor */
	public Report() {
	}


	// Property accessors

	public Integer getRid() {
		return this.rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public Integer getEid() {
		return this.eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}


	public Date getRdate() {
		return rdate;
	}


	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}


	public String getRsummary() {
		return this.rsummary;
	}

	public void setRsummary(String rsummary) {
		this.rsummary = rsummary;
	}

}