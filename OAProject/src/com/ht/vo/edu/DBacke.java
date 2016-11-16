package com.ht.vo.edu;

/**
 * DBacke entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class DBacke implements java.io.Serializable {

	// Fields

	private Integer DId;
	private String DMonth;
	private Integer eid;
	private String ename;
	private Integer DStatus;
	private String classname;
	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public DBacke() {
	}

	public DBacke(String DMonth, Integer eid, Integer DStatus,String classname) {
		this.DMonth = DMonth;
		this.eid = eid;
		this.DStatus = DStatus;
		this.classname=classname;
	}


	public Integer getDId() {
		return this.DId;
	}

	public void setDId(Integer DId) {
		this.DId = DId;
	}

	public String getDMonth() {
		return this.DMonth;
	}

	public void setDMonth(String DMonth) {
		this.DMonth = DMonth;
	}

	public Integer getEid() {
		return this.eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

	public Integer getDStatus() {
		return this.DStatus;
	}

	public void setDStatus(Integer DStatus) {
		this.DStatus = DStatus;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

}