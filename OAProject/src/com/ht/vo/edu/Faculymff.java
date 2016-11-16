package com.ht.vo.edu;

/**
 * Faculymff entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Faculymff implements java.io.Serializable {

	// Fields

	private Integer FId;
	private String fclass;
	private String ename;
	private Integer w1;
	private Integer w2;
	private Integer w3;
	private Integer w4;
	private Integer w5;
	private Integer w6;
	private Integer w7;
	private Integer w8;
	private String fpro;
	private Integer stuid;
	// Constructors

	public Integer getStuid() {
		return stuid;
	}

	public void setStuid(Integer stuid) {
		this.stuid = stuid;
	}

	/** default constructor */
	public Faculymff() {
	}

	/** full constructor */
	public Faculymff(String fclass, String ename, Integer w1, Integer w2, Integer w3, Integer w4,
			Integer w5, Integer w6, Integer w7, Integer w8, String fpro,Integer stuid) {
		this.ename=ename;
		this.fclass=fclass;
		this.w1 = w1;
		this.w2 = w2;
		this.w3 = w3;
		this.w4 = w4;
		this.w5 = w5;
		this.w6 = w6;
		this.w7 = w7;
		this.w8 = w8;
		this.fpro = fpro;
		this.stuid=stuid;
	}

	// Property accessors

	public Integer getFId() {
		return this.FId;
	}

	public void setFId(Integer FId) {
		this.FId = FId;
	}


	public Integer getW1() {
		return this.w1;
	}

	public void setW1(Integer w1) {
		this.w1 = w1;
	}

	public Integer getW2() {
		return this.w2;
	}

	public void setW2(Integer w2) {
		this.w2 = w2;
	}

	public Integer getW3() {
		return this.w3;
	}

	public void setW3(Integer w3) {
		this.w3 = w3;
	}

	public Integer getW4() {
		return this.w4;
	}

	public void setW4(Integer w4) {
		this.w4 = w4;
	}

	public Integer getW5() {
		return this.w5;
	}

	public void setW5(Integer w5) {
		this.w5 = w5;
	}

	public Integer getW6() {
		return this.w6;
	}

	public void setW6(Integer w6) {
		this.w6 = w6;
	}

	public Integer getW7() {
		return this.w7;
	}

	public void setW7(Integer w7) {
		this.w7 = w7;
	}

	public Integer getW8() {
		return this.w8;
	}

	public void setW8(Integer w8) {
		this.w8 = w8;
	}

	public String getFpro() {
		return this.fpro;
	}

	public void setFpro(String fpro) {
		this.fpro = fpro;
	}

	public String getFclass() {
		return fclass;
	}

	public void setFclass(String fclass) {
		this.fclass = fclass;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

}