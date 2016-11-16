package com.ht.vo.msg;
// default package

/**
 * Sug entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Sug implements java.io.Serializable {

	// Fields

	private Integer stuid;
	private Integer intenid;
	private Integer eid;
	private String text;

	

	public Integer getStuid() {
		return this.stuid;
	}

	public void setStuid(Integer stuid) {
		this.stuid = stuid;
	}

	public Integer getIntenid() {
		return this.intenid;
	}

	public void setIntenid(Integer intenid) {
		this.intenid = intenid;
	}

	public Integer getEid() {
		return this.eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

	public String getText() {
		return this.text;
	}

	public void setText(String text) {
		this.text = text;
	}

}