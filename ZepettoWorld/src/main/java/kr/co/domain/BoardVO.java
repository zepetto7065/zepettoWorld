package kr.co.domain;

import java.io.Serializable;

public class BoardVO implements Serializable {
	private static final long serialVersionUID = 1L;

	private int bno;
	private String title;
	private String ssoId;
	private String userName;
	private String regDate;
	private String updateDate;
	private String content;
	private int viewCnt;
	private String deleteYn;
	private int replyCnt;

	public BoardVO() {
		// TODO Auto-generated constructor stub
	}

	
	
	public BoardVO(int bno, String title, String ssoId, String userName, String regDate, String updateDate,
			String content, int viewCnt, String deleteYn, int replyCnt) {
		super();
		this.bno = bno;
		this.title = title;
		this.ssoId = ssoId;
		this.userName = userName;
		this.regDate = regDate;
		this.updateDate = updateDate;
		this.content = content;
		this.viewCnt = viewCnt;
		this.deleteYn = deleteYn;
		this.replyCnt = replyCnt;
	}



	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSsoId() {
		return ssoId;
	}

	public void setSsoId(String ssoId) {
		this.ssoId = ssoId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public String getDeleteYn() {
		return deleteYn;
	}

	public void setDeleteYn(String deleteYn) {
		this.deleteYn = deleteYn;
	}

	public int getReplyCnt() {
		return replyCnt;
	}

	public void setReplyCnt(int replyCnt) {
		this.replyCnt = replyCnt;
	}

	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", ssoId=" + ssoId + ", userName=" + userName + ", regDate="
				+ regDate + ", updateDate=" + updateDate + ", content=" + content + ", viewCnt=" + viewCnt
				+ ", deleteYn=" + deleteYn + ", replyCnt=" + replyCnt + "]";
	}
	
	
}