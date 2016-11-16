package com.ht.vo.stu;

/**
 * Says entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Says implements java.io.Serializable {

	// 谈心记录表

	private Integer sayid;
	private String sid;
	private String classid;
	private String sayscon;
	private String sayspro;
	private String saysback;
	public Integer getSayid() {
		return sayid;
	}
	public void setSayid(Integer sayid) {
		this.sayid = sayid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getClassid() {
		return classid;
	}
	public void setClassid(String classid) {
		this.classid = classid;
	}
	public String getSayscon() {
		return sayscon;
	}
	public void setSayscon(String sayscon) {
		this.sayscon = sayscon;
	}
	public String getSayspro() {
		return sayspro;
	}
	public void setSayspro(String sayspro) {
		this.sayspro = sayspro;
	}
	public String getSaysback() {
		return saysback;
	}
	public void setSaysback(String saysback) {
		this.saysback = saysback;
	}
	
	
	
}