package com.ht.vo.msg;


// default package

/**
 * Msg entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Msg implements java.io.Serializable {

	// Fields

	private Integer msgid;
	private String msgtitle;
	private String msgcon;
	private Integer msgstatus;
	private Integer msgface;
	private String msgaccessory;
	
	public Integer getMsgid() {
		return this.msgid;
	}

	public void setMsgid(Integer msgid) {
		this.msgid = msgid;
	}

	public String getMsgtitle() {
		return this.msgtitle;
	}

	public void setMsgtitle(String msgtitle) {
		this.msgtitle = msgtitle;
	}

	public String getMsgcon() {
		return this.msgcon;
	}

	public void setMsgcon(String msgcon) {
		this.msgcon = msgcon;
	}

	public Integer getMsgstatus() {
		return this.msgstatus;
	}

	public void setMsgstatus(Integer msgstatus) {
		this.msgstatus = msgstatus;
	}

	public Integer getMsgface() {
		return this.msgface;
	}

	public void setMsgface(Integer msgface) {
		this.msgface = msgface;
	}

	public String getMsgaccessory() {
		return msgaccessory;
	}

	public void setMsgaccessory(String msgaccessory) {
		this.msgaccessory = msgaccessory;
	}

}