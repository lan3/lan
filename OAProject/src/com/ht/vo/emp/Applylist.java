package com.ht.vo.emp;

/**
 * Applylist entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Applylist implements java.io.Serializable {

	// ±®œ˙…Í«Î±Ì

	private Integer applyid;
	private Integer gid;
	private Integer applycount;
	private String applydeal;
	private String applydate;
	private String applyperson;

	// Constructors


	// Property accessors

	public Integer getApplyid() {
		return this.applyid;
	}

	public void setApplyid(Integer applyid) {
		this.applyid = applyid;
	}

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public Integer getApplycount() {
		return this.applycount;
	}

	public void setApplycount(Integer applycount) {
		this.applycount = applycount;
	}

	public String getApplydeal() {
		return this.applydeal;
	}

	public void setApplydeal(String applydeal) {
		this.applydeal = applydeal;
	}

	public String getApplydate() {
		return this.applydate;
	}

	public void setApplydate(String applydate) {
		this.applydate = applydate;
	}

	public String getApplyperson() {
		return this.applyperson;
	}

	public void setApplyperson(String applyperson) {
		this.applyperson = applyperson;
	}

}