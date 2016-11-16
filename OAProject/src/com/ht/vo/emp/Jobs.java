package com.ht.vo.emp;

/**
 * Jobs entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Jobs implements java.io.Serializable {

	//员工工作经历表

	private Integer jid;
	private Integer eid;
	private String jcompany;
	private String jwork;
	private String jreason;
	private String jmoney;

	// Constructors


	// Property accessors

	public Integer getJid() {
		return this.jid;
	}

	public void setJid(Integer jid) {
		this.jid = jid;
	}

	public Integer getEid() {
		return this.eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}


	public String getJcompany() {
		return this.jcompany;
	}

	public void setJcompany(String jcompany) {
		this.jcompany = jcompany;
	}

	public String getJwork() {
		return this.jwork;
	}

	public void setJwork(String jwork) {
		this.jwork = jwork;
	}

	public String getJreason() {
		return this.jreason;
	}

	public void setJreason(String jreason) {
		this.jreason = jreason;
	}

	public String getJmoney() {
		return this.jmoney;
	}

	public void setJmoney(String jmoney) {
		this.jmoney = jmoney;
	}

}