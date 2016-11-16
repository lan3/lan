package com.ht.vo.emp;

import java.util.Date;
import java.util.List;

/**
 * Kaoqin entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Kaoqin implements java.io.Serializable {

	// Fields

	private Integer kid;
	private Integer eid;
	private String ename;
	private Date ymonth;
	private Integer days;
	private String ktime;
	private Integer kmoney;
	private Integer kqday;
	private List list;
	// Constructors

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	/** default constructor */
	public Kaoqin() {
	}

	/** full constructor */
	public Kaoqin(Integer eid, String ename, Date ymonth, Integer days, String ktime,
			Integer kmoney, Integer kqday) {
		this.eid = eid;
		this.ename = ename;
		this.ymonth = ymonth;
		this.days = days;
		this.ktime = ktime;
		this.kmoney = kmoney;
		this.kqday = kqday;
	}

	// Property accessors

	public Integer getKid() {
		return this.kid;
	}

	public void setKid(Integer kid) {
		this.kid = kid;
	}

	public Integer getEid() {
		return this.eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

	public String getEname() {
		return this.ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public Date getYmonth() {
		return this.ymonth;
	}

	public void setYmonth(Date ymonth) {
		this.ymonth = ymonth;
	}

	public Integer getDays() {
		return this.days;
	}

	public void setDays(Integer days) {
		this.days = days;
	}

	public String getKtime() {
		return this.ktime;
	}

	public void setKtime(String ktime) {
		this.ktime = ktime;
	}

	public Integer getKmoney() {
		return this.kmoney;
	}

	public void setKmoney(Integer kmoney) {
		this.kmoney = kmoney;
	}

	public Integer getKqday() {
		return this.kqday;
	}

	public void setKqday(Integer kqday) {
		this.kqday = kqday;
	}

}