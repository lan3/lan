package com.ht.vo.edu;

/**
 * Tra entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Tra implements java.io.Serializable {

	// Fields

	private Long tid;
	private String tdata;
	private String tloc;
	private String tname;
	private String tnoter;
	private String tename;
	private String theam;
	private String tcon;
	private String tsug;

	// Constructors

	/** default constructor */
	public Tra() {
	}

	/** full constructor */
	public Tra(String tdata, String tloc, String tname, String tnoter,
			String tename, String theam, String tcon, String tsug) {
		this.tdata = tdata;
		this.tloc = tloc;
		this.tname = tname;
		this.tnoter = tnoter;
		this.tename = tename;
		this.theam = theam;
		this.tcon = tcon;
		this.tsug = tsug;
	}

	// Property accessors

	public Long getTid() {
		return this.tid;
	}

	public void setTid(Long tid) {
		this.tid = tid;
	}

	public String getTdata() {
		return this.tdata;
	}

	public void setTdata(String tdata) {
		this.tdata = tdata;
	}

	public String getTloc() {
		return this.tloc;
	}

	public void setTloc(String tloc) {
		this.tloc = tloc;
	}

	public String getTname() {
		return this.tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getTnoter() {
		return this.tnoter;
	}

	public void setTnoter(String tnoter) {
		this.tnoter = tnoter;
	}

	public String getTename() {
		return this.tename;
	}

	public void setTename(String tename) {
		this.tename = tename;
	}

	public String getTheam() {
		return this.theam;
	}

	public void setTheam(String theam) {
		this.theam = theam;
	}

	public String getTcon() {
		return this.tcon;
	}

	public void setTcon(String tcon) {
		this.tcon = tcon;
	}

	public String getTsug() {
		return this.tsug;
	}

	public void setTsug(String tsug) {
		this.tsug = tsug;
	}

}