package com.ht.vo.mon;
// default package

/**
 * Ava entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Ava implements java.io.Serializable {

	// Fields

	private Integer aid;
	private Integer avafrom;
	private Double avamon;
	private Integer term;
	private String sname;
	private String ename;
	private String classname;
	// Constructors

	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public Double getAvamon() {
		return avamon;
	}

	public void setAvamon(Double avamon) {
		this.avamon = avamon;
	}

	/** default constructor */
	public Ava() {
	}

	/** full constructor */
	public Ava(String sname, String ename, Integer avafrom,Double avamon,Integer term) {
		this.avafrom = avafrom;
		this.avamon=avamon;
		this.sname=sname;
		this.ename=ename;
		this.term=term;
	}


	public Integer getAid() {
		return this.aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public Integer getTerm() {
		return term;
	}

	public void setTerm(Integer term) {
		this.term = term;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public Integer getAvafrom() {
		return this.avafrom;
	}

	public void setAvafrom(Integer avafrom) {
		this.avafrom = avafrom;
	}

}