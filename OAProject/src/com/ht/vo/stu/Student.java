package com.ht.vo.stu;

/**
 * Student entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Student implements java.io.Serializable {

	// Fields

	private Integer sid;
	private String sname;
	private String sex;
	private Integer age;
	private String birthday;
	private String classid;
	private String hourid;
	private String pname;
	private String ssname;
	private String spwd;
	private Integer facustatus;
	public Integer getFacustatus() {
		return facustatus;
	}
	public void setFacustatus(Integer facustatus) {
		this.facustatus = facustatus;
	}
	public String getSsname() {
		return ssname;
	}
	public void setSsname(String ssname) {
		this.ssname = ssname;
	}
	public String getSpwd() {
		return spwd;
	}
	public void setSpwd(String spwd) {
		this.spwd = spwd;
	}
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getClassid() {
		return classid;
	}
	public void setClassid(String classid) {
		this.classid = classid;
	}
	public String getHourid() {
		return hourid;
	}
	public void setHourid(String hourid) {
		this.hourid = hourid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
}