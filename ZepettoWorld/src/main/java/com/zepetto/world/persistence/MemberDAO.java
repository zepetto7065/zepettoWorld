package com.zepetto.world.persistence;

import com.zepetto.world.domain.MemberVO;

public interface MemberDAO {
	
	void join(MemberVO vo);
	int getTotalCount();
	int checkId(String id);
	int checkEmail(String checkEmail);
	MemberVO loginUserInfo(MemberVO vo);
	int checkUser(MemberVO vo);
}
