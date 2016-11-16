package com.ht.vo.stu;

/**
 * Web entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Web implements java.io.Serializable {

	// 项目答辩管理表

	private Integer web;
	private String wname;
	private Integer intenid;
	private String eid;
	private String wdata;
	private Integer score;
	public Integer getWeb() {
		return web;
	}
	public void setWeb(Integer web) {
		this.web = web;
	}
	public String getWname() {
		return wname;
	}
	public void setWname(String wname) {
		this.wname = wname;
	}
	public Integer getIntenid() {
		return intenid;
	}
	public void setIntenid(Integer intenid) {
		this.intenid = intenid;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getWdata() {
		return wdata;
	}
	public void setWdata(String wdata) {
		this.wdata = wdata;
	}
	public Integer getScore() {
		return score;
	}
	public void setScore(Integer score) {
		this.score = score;
	}


}