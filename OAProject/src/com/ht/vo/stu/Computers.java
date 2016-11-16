package com.ht.vo.stu;

import java.util.Date;

/**
 * Computers entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Computers implements java.io.Serializable {

	// Fields

	private Integer coid;
	private String lconts;
	private String sids;
	private String times;
	private String classid;
	private String starts;
	private String empteach;
	public String getEmpteach() {
		return empteach;
	}
	public void setEmpteach(String empteach) {
		this.empteach = empteach;
	}
	public String getClassid() {
		return classid;
	}
	public void setClassid(String classid) {
		this.classid = classid;
	}
	public String getStarts() {
		return starts;
	}
	public void setStarts(String starts) {
		this.starts = starts;
	}
	public Integer getCoid() {
		return coid;
	}
	public void setCoid(Integer coid) {
		this.coid = coid;
	}
	
	public String getLconts() {
		return lconts;
	}
	public void setLconts(String lconts) {
		this.lconts = lconts;
	}
	public String getTimes() {
		return times;
	}
	public void setTimes(String times) {
		this.times = times;
	}
	public String getSids() {
		return sids;
	}
	public void setSids(String sids) {
		this.sids = sids;
	}
	

}