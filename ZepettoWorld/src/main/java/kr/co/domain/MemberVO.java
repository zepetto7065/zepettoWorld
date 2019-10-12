package kr.co.domain;

import java.io.Serializable;

public class MemberVO implements Serializable {
	private static final long serialVersionUID = 1L;

	private String ssoId;
	private String passWord;
	private String userName;
	private String userAddress;
	private String birthDay;
	private String userEmail;
	private String phoneNum;
	private String joinDate;
	private String authority;
	
	private String stateSi;
	private String stateGu;
	private String stateDong;
	private String stateDetail;
	
    public MemberVO() {
		// TODO Auto-generated constructor stub
	}

	public MemberVO(String ssoId, String passWord, String userName, String userAddress, String birthDay,
			String userEmail, String phoneNum, String joinDate, String authority) {
		super();
		this.ssoId = ssoId;
		this.passWord = passWord;
		this.userName = userName;
		this.userAddress = userAddress;
		this.birthDay = birthDay;
		this.userEmail = userEmail;
		this.phoneNum = phoneNum;
		this.joinDate = joinDate;
		this.authority = authority;
	}

	public String getSsoId() {
		return ssoId;
	}

	public void setSsoId(String ssoId) {
		this.ssoId = ssoId;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress() {
		this.userAddress = getStateSi()+" "+ getStateGu()+" "+ getStateDong()+" "+ getStateDetail();
	}

	public String getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public String getStateSi() {
		return stateSi;
	}

	public void setStateSi(String stateSi) {
		this.stateSi = stateSi;
	}

	public String getStateGu() {
		return stateGu;
	}

	public void setStateGu(String stateGu) {
		this.stateGu = stateGu;
	}

	public String getStateDong() {
		return stateDong;
	}

	public void setStateDong(String stateDong) {
		this.stateDong = stateDong;
	}

	public String getStateDetail() {
		return stateDetail;
	}

	public void setStateDetail(String stateDetail) {
		this.stateDetail = stateDetail;
	}

	@Override
	public String toString() {
		return "MemberVO [ssoId=" + ssoId + ", passWord=" + passWord + ", userName=" + userName + ", userAddress="
				+ userAddress + ", birthDay=" + birthDay + ", userEmail=" + userEmail + ", phoneNum=" + phoneNum
				+ ", joinDate=" + joinDate + ", authority=" + authority + "]";
	}

	
	
	
	
}