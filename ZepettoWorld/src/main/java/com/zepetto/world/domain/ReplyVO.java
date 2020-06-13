package com.zepetto.world.domain;

import java.io.Serializable;
import java.util.Date;

public class ReplyVO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer replyNo;
	private Integer bno;
	private String replyText;
	private String replyWriter;
	private Date regDate;
	private Date updateDate;
	
	public Integer getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(Integer replyNo) {
		this.replyNo = replyNo;
	}
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public String getReplyText() {
		return replyText;
	}
	public void setReplyText(String replyText) {
		this.replyText = replyText;
	}
	public String getReplyWriter() {
		return replyWriter;
	}
	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	@Override
	public String toString() {
		return "ReplyVO [replyNo=" + replyNo + ", bno=" + bno + ", replyText=" + replyText + ", replyWriter="
				+ replyWriter + ", regDate=" + regDate + ", updateDate=" + updateDate + "]";
	}
	
	
	
	
	
	
	
}