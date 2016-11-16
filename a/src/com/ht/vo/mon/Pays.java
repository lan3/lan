package com.ht.vo.mon;

/**
 * Pays entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Pays implements java.io.Serializable {

	// Fields

	private Long paysid;
	private String ejob;
	private Long paynorm;
	private String checkdata;
	private Long sickdata;
	private Long outdata;
	private Long otherdata;
	private Long buslowmon;
	private Long intodata;
	private Long falldata;
	private Long shouldmon;
	private Long defyepochfine;
	private Long comedatamon;
	private Long othermon;
	private Long echotaxmon;
	private Long socialmon;
	private Long noasingfaud;
	private Long incometax;
	private Long homepay;
	private String remark;

	// Constructors

	/** default constructor */
	public Pays() {
	}

	/** full constructor */
	public Pays(String ejob, Long paynorm, String checkdata, Long sickdata,
			Long outdata, Long otherdata, Long buslowmon, Long intodata,
			Long falldata, Long shouldmon, Long defyepochfine,
			Long comedatamon, Long othermon, Long echotaxmon, Long socialmon,
			Long noasingfaud, Long incometax, Long homepay, String remark) {
		this.ejob = ejob;
		this.paynorm = paynorm;
		this.checkdata = checkdata;
		this.sickdata = sickdata;
		this.outdata = outdata;
		this.otherdata = otherdata;
		this.buslowmon = buslowmon;
		this.intodata = intodata;
		this.falldata = falldata;
		this.shouldmon = shouldmon;
		this.defyepochfine = defyepochfine;
		this.comedatamon = comedatamon;
		this.othermon = othermon;
		this.echotaxmon = echotaxmon;
		this.socialmon = socialmon;
		this.noasingfaud = noasingfaud;
		this.incometax = incometax;
		this.homepay = homepay;
		this.remark = remark;
	}

	// Property accessors

	public Long getPaysid() {
		return this.paysid;
	}

	public void setPaysid(Long paysid) {
		this.paysid = paysid;
	}

	public String getEjob() {
		return this.ejob;
	}

	public void setEjob(String ejob) {
		this.ejob = ejob;
	}

	public Long getPaynorm() {
		return this.paynorm;
	}

	public void setPaynorm(Long paynorm) {
		this.paynorm = paynorm;
	}

	public String getCheckdata() {
		return this.checkdata;
	}

	public void setCheckdata(String checkdata) {
		this.checkdata = checkdata;
	}

	public Long getSickdata() {
		return this.sickdata;
	}

	public void setSickdata(Long sickdata) {
		this.sickdata = sickdata;
	}

	public Long getOutdata() {
		return this.outdata;
	}

	public void setOutdata(Long outdata) {
		this.outdata = outdata;
	}

	public Long getOtherdata() {
		return this.otherdata;
	}

	public void setOtherdata(Long otherdata) {
		this.otherdata = otherdata;
	}

	public Long getBuslowmon() {
		return this.buslowmon;
	}

	public void setBuslowmon(Long buslowmon) {
		this.buslowmon = buslowmon;
	}

	public Long getIntodata() {
		return this.intodata;
	}

	public void setIntodata(Long intodata) {
		this.intodata = intodata;
	}

	public Long getFalldata() {
		return this.falldata;
	}

	public void setFalldata(Long falldata) {
		this.falldata = falldata;
	}

	public Long getShouldmon() {
		return this.shouldmon;
	}

	public void setShouldmon(Long shouldmon) {
		this.shouldmon = shouldmon;
	}

	public Long getDefyepochfine() {
		return this.defyepochfine;
	}

	public void setDefyepochfine(Long defyepochfine) {
		this.defyepochfine = defyepochfine;
	}

	public Long getComedatamon() {
		return this.comedatamon;
	}

	public void setComedatamon(Long comedatamon) {
		this.comedatamon = comedatamon;
	}

	public Long getOthermon() {
		return this.othermon;
	}

	public void setOthermon(Long othermon) {
		this.othermon = othermon;
	}

	public Long getEchotaxmon() {
		return this.echotaxmon;
	}

	public void setEchotaxmon(Long echotaxmon) {
		this.echotaxmon = echotaxmon;
	}

	public Long getSocialmon() {
		return this.socialmon;
	}

	public void setSocialmon(Long socialmon) {
		this.socialmon = socialmon;
	}

	public Long getNoasingfaud() {
		return this.noasingfaud;
	}

	public void setNoasingfaud(Long noasingfaud) {
		this.noasingfaud = noasingfaud;
	}

	public Long getIncometax() {
		return this.incometax;
	}

	public void setIncometax(Long incometax) {
		this.incometax = incometax;
	}

	public Long getHomepay() {
		return this.homepay;
	}

	public void setHomepay(Long homepay) {
		this.homepay = homepay;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}