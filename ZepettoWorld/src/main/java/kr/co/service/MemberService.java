package kr.co.service;


import kr.co.domain.MemberVO;

public interface MemberService {
	void join(MemberVO vo);
	Integer getBno();
	int getTotalCount();
	int checkId(String id);
	int checkEmail(String checkEmail);
	MemberVO loginUserInfo(MemberVO vo);
	int checkUser(MemberVO vo);
}
