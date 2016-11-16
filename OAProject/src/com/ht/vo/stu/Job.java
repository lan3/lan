package com.ht.vo.stu;

/**
 * Job entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Job implements java.io.Serializable {

	// Fields

	private Integer jobid;
	private String classid;
	private String sid;
	private String city;
	private Integer phone;
	private String money;
	private String fuli;
	private String beizhu;
	private String jobname;
	public String getJobname() {
		return jobname;
	}
	public void setJobname(String jobname) {
		this.jobname = jobname;
	}
	public Integer getJobid() {
		return jobid;
	}
	public void setJobid(Integer jobid) {
		this.jobid = jobid;
	}

	public String getClassid() {
		return classid;
	}
	public void setClassid(String classid) {
		this.classid = classid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Integer getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
		this.phone = phone;
	}
	
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getFuli() {
		return fuli;
	}
	public void setFuli(String fuli) {
		this.fuli = fuli;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

	
}