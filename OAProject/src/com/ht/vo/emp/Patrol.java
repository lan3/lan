package com.ht.vo.emp;

import java.util.Date;

/**
 * Patrol entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Patrol implements java.io.Serializable {

	// Ñ²²é

	private Integer pid;
	private Integer eid;
	private String pclass;
	private Date pdatetime;
	private String pdesc;
	private Integer ycount;
	private Integer scount;
	private String wcdesc;
	private String tname;
	private String tisstay;
	private String studesc;
	private String tisdo;
	private String ptime;

	// Constructors


	// Property accessors

	public String getPtime() {
		return ptime;
	}

	public void setPtime(String ptime) {
		this.ptime = ptime;
	}

	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Integer getEid() {
		return this.eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}


	public String getPclass() {
		return pclass;
	}

	public void setPclass(String pclass) {
		this.pclass = pclass;
	}


	public Date getPdatetime() {
		return pdatetime;
	}

	public void setPdatetime(Date pdatetime) {
		this.pdatetime = pdatetime;
	}

	public String getPdesc() {
		return this.pdesc;
	}

	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}

	public Integer getYcount() {
		return this.ycount;
	}

	public void setYcount(Integer ycount) {
		this.ycount = ycount;
	}

	public Integer getScount() {
		return this.scount;
	}

	public void setScount(Integer scount) {
		this.scount = scount;
	}

	public String getWcdesc() {
		return this.wcdesc;
	}

	public void setWcdesc(String wcdesc) {
		this.wcdesc = wcdesc;
	}

	public String getTname() {
		return this.tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTisstay() {
		return this.tisstay;
	}

	public void setTisstay(String tisstay) {
		this.tisstay = tisstay;
	}

	public String getStudesc() {
		return this.studesc;
	}

	public void setStudesc(String studesc) {
		this.studesc = studesc;
	}

	public String getTisdo() {
		return this.tisdo;
	}

	public void setTisdo(String tisdo) {
		this.tisdo = tisdo;
	}

}