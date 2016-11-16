package com.ht.vo.mon;

/**
 * Computer entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Computer implements java.io.Serializable {

	// Fields

	private Integer cpid;
	private String interid;
	private String comid;
	private String cpname;
	private String cpdata;
	private String isgave;
	// Constructors


	// Property accessors

	public String getIsgave() {
		return isgave;
	}

	public void setIsgave(String isgave) {
		this.isgave = isgave;
	}

	public Integer getCpid() {
		return this.cpid;
	}

	public void setCpid(Integer cpid) {
		this.cpid = cpid;
	}

	public String getInterid() {
		return this.interid;
	}

	public void setInterid(String interid) {
		this.interid = interid;
	}

	public String getComid() {
		return this.comid;
	}

	public void setComid(String comid) {
		this.comid = comid;
	}

	public String getCpname() {
		return this.cpname;
	}

	public void setCpname(String cpname) {
		this.cpname = cpname;
	}

	public String getCpdata() {
		return this.cpdata;
	}

	public void setCpdata(String cpdata) {
		this.cpdata = cpdata;
	}

}