package com.ht.vo.stu;

import java.util.Date;

/**
 * Stuleve entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Stuleve implements java.io.Serializable {

	// Fields

	private Integer leveid;
	private String sid;
	private String classid;
	private Date startdate;
	private Date endtime;
	private Integer day;
	private String empteach;
	private String lcont;
	private String starts;
	public Integer getLeveid() {
		return leveid;
	}
	public void setLeveid(Integer leveid) {
		this.leveid = leveid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getClassid() {
		return classid;
	}
	public void setClassid(String classid) {
		this.classid = classid;
	}
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public Date getEndtime() {
		return endtime;
	}
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	public Integer getDay() {
		return day;
	}
	public void setDay(Integer day) {
		this.day = day;
	}
	public String getEmpteach() {
		return empteach;
	}
	public void setEmpteach(String empteach) {
		this.empteach = empteach;
	}
	public String getLcont() {
		return lcont;
	}
	public void setLcont(String lcont) {
		this.lcont = lcont;
	}
	public String getStarts() {
		return starts;
	}
	public void setStarts(String starts) {
		this.starts = starts;
	}

}