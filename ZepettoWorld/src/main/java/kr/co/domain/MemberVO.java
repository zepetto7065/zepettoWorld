package kr.co.domain;

import java.io.Serializable;

public class MemberVO implements Serializable {
	private static final long serialVersionUID = 1L;

	private int bno;	
	private String ssoId;
	private String passWord;
	private String userName;
	private String userBirth;
	private String birthYear;
	private String birthMonth;
	private String birthDate;
	private String userGender;	
	private String userEmail;
	private String phoneNum;
	private String joinDate;
	private String deleteDate;
	private String deleteYn;
	
	public MemberVO() {
		// TODO Auto-generated constructor stub
	}

    

	public MemberVO(int bno, String ssoId, String passWord, String userName, String userBirth, String birthYear,
			String birthMonth, String birthDate, String userGender, String userEmail, String phoneNum, String joinDate,
			String deleteDate, String deleteYn) {
		super();
		this.bno = bno;
		this.ssoId = ssoId;
		this.passWord = passWord;
		this.userName = userName;
		this.userBirth = userBirth;
		this.birthYear = birthYear;
		this.birthMonth = birthMonth;
		this.birthDate = birthDate;
		this.userGender = userGender;
		this.userEmail = userEmail;
		this.phoneNum = phoneNum;
		this.joinDate = joinDate;
		this.deleteDate = deleteDate;
		this.deleteYn = deleteYn;
	}



	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
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


	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String year,String month,String date) {
		year = setBirthYear(year);
		month = setBirthMonth(month);
		date = setBirthDate(date);
		String birth = year+month+date;
		
		this.userBirth = birth;
	}

	public String getBirthYear() {
		return birthYear;
	}

	public String setBirthYear(String birthYear) {
		return this.birthYear = birthYear;
	}

	public String getBirthMonth() {
		return birthMonth;
	}

	public String setBirthMonth(String birthMonth) {
		return this.birthMonth = birthMonth;
	}

	public String getBirthDate() {
		return birthDate;
	}

	public String setBirthDate(String birthDate) {
		return this.birthDate = birthDate;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
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

	public String getDeleteDate() {
		return deleteDate;
	}

	public void setDeleteDate(String deleteDate) {
		this.deleteDate = deleteDate;
	}

	public String getDeleteYn() {
		return deleteYn;
	}

	public void setDeleteYn(String deleteYn) {
		this.deleteYn = deleteYn;
	}
	
	
	
}