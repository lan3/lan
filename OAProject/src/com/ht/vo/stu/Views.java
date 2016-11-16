package com.ht.vo.stu;

/**
 * Views entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Views implements java.io.Serializable {

	// Fields

	private Integer vid;
	private String sid;
	private String classid;
	private String vcontent;
	private String endtime;
	private String views;
	public Integer getVid() {
		return vid;
	}
	public void setVid(Integer vid) {
		this.vid = vid;
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
	public String getVcontent() {
		return vcontent;
	}
	public void setVcontent(String vcontent) {
		this.vcontent = vcontent;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public String getViews() {
		return views;
	}
	public void setViews(String views) {
		this.views = views;
	}

	
	
}