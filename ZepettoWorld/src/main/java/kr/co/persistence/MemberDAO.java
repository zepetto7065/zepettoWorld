package kr.co.persistence;

import kr.co.domain.MemberVO;

public interface MemberDAO {
	
	void join(MemberVO vo);
	int getTotalCount();
	int checkId(String id);
	int checkEmail(String checkEmail);
	MemberVO loginUserInfo(MemberVO vo);
}
