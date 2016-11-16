package com.ht.vo.emp;

/**
 * Applygoods entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Applygoods implements java.io.Serializable {

	// 物品申购明细表

	private Integer gid;
	private Integer aid;
	private String goodsname;
	private Integer gcounts;
	private String gunit;
	private Double gprice;
	private Double gtotal;
	private String gpurpose;

	// Constructors



	// Property accessors

	public Integer getGid() {
		return this.gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public Integer getAid() {
		return this.aid;
	}

	public void setAid(Integer aid) {
		this.aid = aid;
	}

	public String getGoodsname() {
		return this.goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public Integer getGcounts() {
		return this.gcounts;
	}

	public void setGcounts(Integer gcounts) {
		this.gcounts = gcounts;
	}

	public String getGunit() {
		return this.gunit;
	}

	public void setGunit(String gunit) {
		this.gunit = gunit;
	}

	public Double getGprice() {
		return this.gprice;
	}

	public void setGprice(Double gprice) {
		this.gprice = gprice;
	}

	public Double getGtotal() {
		return this.gtotal;
	}

	public void setGtotal(Double gtotal) {
		this.gtotal = gtotal;
	}

	public String getGpurpose() {
		return this.gpurpose;
	}

	public void setGpurpose(String gpurpose) {
		this.gpurpose = gpurpose;
	}

}